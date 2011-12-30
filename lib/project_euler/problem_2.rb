class Problem2 < ProjectEuler::Problem
  def solution
    ProjectEuler::Utils::Fibonacci.new.reduce(0) do |sum, i|
      i.even? ? sum + i : sum
    end
  end
end
