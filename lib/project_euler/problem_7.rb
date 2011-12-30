class Problem7 < ProjectEuler::Problem
  # I used the sieve of eratosthenes to solve this problem, which
  # I'm not sure is the best approach because you have to guess the
  # value of n initially. Once the 10,001st prime is found, you can
  # lower the value of n to limit iterations.
  def solution n = 105_000
    primes = Array.new.tap do |primes|
      arr = Array.new.tap do |marks|
        (2..n).each do |i|
          next if marks[i - 1] == 'x'
          primes << i
          break if primes.length > 10000
          (i..n).step(i) do |j|
            marks[j - 1] = 'x'
          end
        end
      end
    end
    primes.last
  end
end
