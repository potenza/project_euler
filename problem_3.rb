require 'prime'

def lpf n
  Prime.each(Math.sqrt(n)).select do |prime|
    n % prime == 0
  end.last
end

puts lpf 600851475143
