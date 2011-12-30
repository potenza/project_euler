class Problem9 < ProjectEuler::Problem
  def solution
    1.upto(100) do |i|
      (i+1).upto(100) do |j|
        a = j ** 2 - i ** 2
        b = 2 * i * j
        c = j ** 2 + i ** 2

        return a * b * c if a + b + c == 1000
      end
    end
  end
end
