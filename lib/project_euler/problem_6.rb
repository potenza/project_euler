class Problem6 < ProjectEuler::Problem
  def solution limit = 100
    sum_squares = (1..limit).reduce { |sum, i| sum + i ** 2 }
    square_sum = (1..limit).reduce { |sum, i| sum + i } ** 2
    square_sum - sum_squares
  end
end
