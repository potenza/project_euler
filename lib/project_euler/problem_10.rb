class Problem10 < ProjectEuler::Problem
  def solution
    ProjectEuler::Utils::Prime.upto(2_000_000).reduce :+
  end
end
