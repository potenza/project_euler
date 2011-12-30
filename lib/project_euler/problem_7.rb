class Problem7 < ProjectEuler::Problem
  # I used the sieve of eratosthenes to solve this problem, which
  # I'm not sure is the best approach because you have to guess the
  # value of n initially. Once the 10,001st prime is found, you can
  # lower the value of n to limit iterations.
  def solution n = 105_000
    primes = [].tap do |primes|
      tmp = [].tap do |tmp|
        (2..n).each do |i|
          (i..n).step(i) do |j|
            unless tmp[j] # has the location been marked?
              if j > i
                tmp[j] = 'x'
              else
                primes << i
              end
            end
          end
        end
      end
    end
    primes[10000]
  end
end
