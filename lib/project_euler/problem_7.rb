class Problem7 < ProjectEuler::Problem
  # I used the sieve of eratosthenes to solve this problem, which
  # I'm not sure is the best approach because you have to guess the
  # value of n initially. Once the 10,001st prime is found, you can
  # lower the value of n to limit iterations.
  def solution n = 105_000
    primes = (2..n).to_a.unshift(nil, nil)
    (2..Math.sqrt(n)).each do |i|
      next if i > 2 && i % 2 == 0
      (i ** 2..n).step(i) do |j|
        primes[j] = nil if primes[j]
      end
    end
    primes.compact[10000]
  end
end
