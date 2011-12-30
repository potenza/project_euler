class Problem7 < ProjectEuler::Problem
  def solution
    ProjectEuler::Utils::Prime.upto(105_000)[10001 - 1]
  end
end
