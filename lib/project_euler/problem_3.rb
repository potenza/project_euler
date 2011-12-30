class Problem3 < ProjectEuler::Problem
  def solution n = 600851475143
    Prime.each(Math.sqrt(n)).select do |prime|
      n % prime == 0
    end.last
  end
end
