require 'prime'

def lpf n
  Prime.each(Math.sqrt(n)).select { |prime|
    n % prime == 0
  }.last
end

puts lpf 600851475143
