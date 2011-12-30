class Problem1 < ProjectEuler::Problem
  def solution
    (1...1000).select do |i|
      i % 3 == 0 || i % 5 == 0
    end.inject(:+)
  end
end
