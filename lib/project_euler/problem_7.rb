class Problem7 < ProjectEuler::Problem
  # I used the sieve of eratosthenes to solve this problem, which
  # I'm not sure is the best approach because you have to guess the
  # value of n initially. Once the 10,001st prime is found, you can
  # lower the value of n to limit iterations.
  def solution n = 105_000
    primes = (2..n).to_a
    (2..Math.sqrt(n)).each do |i|
      (i..n).step(i) do |j|
        primes[j - 2] = nil if j > i
      end
    end
    primes.compact!
    primes[10000]
  end
end
