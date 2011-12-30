module ProjectEuler
  module Utils
    class Prime
      def self.upto n
        primes = (2..n).to_a.unshift(nil, nil)
        (2..Math.sqrt(n)).each do |i|
          next if i > 2 && i % 2 == 0
          (i ** 2..n).step(i) do |j|
            primes[j] = nil if primes[j]
          end
        end
        primes.compact
      end
    end
  end
end
