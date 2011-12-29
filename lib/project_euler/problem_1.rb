class Problem1 < ProjectEuler::Problem
  def solution
    (1...1000).select { |i|
      i % 3 == 0 || i % 5 == 0
    }.inject(:+)
  end
end
