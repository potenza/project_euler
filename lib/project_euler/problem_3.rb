class Problem3 < ProjectEuler::Problem
  def solution n = 600851475143
    Prime.each(Math.sqrt(n)).select { |prime|
      n % prime == 0
    }.last
  end
end
