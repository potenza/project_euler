class Problem10 < ProjectEuler::Problem
  def solution n = 2_000_000
    primes = (2..n).to_a.unshift(nil, nil)
    (2..Math.sqrt(n)).each do |i|
      next if i > 2 && i % 2 == 0
      (i ** 2..n).step(i) do |j|
        primes[j] = nil if primes[j]
      end
    end
    primes.compact.reduce :+
  end
end
