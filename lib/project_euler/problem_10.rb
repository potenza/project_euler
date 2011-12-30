class Problem10 < ProjectEuler::Problem
  def solution n = 2_000_000
    primes = (2..n).to_a
    (2..Math.sqrt(n)).each do |i|
      (i..n).step(i) do |j|
        primes[j - 2] = nil if j > i
      end
    end
    primes.compact.reduce :+
  end
end
