def problem_5
  # kinda brute force-ish, but start with multiples of 19 to limit iterations
  start, i = 19, 1
  loop do
    n = start * i
    if (n % 17 == 0) &&
      (n % 15 == 0) &&
      (n % 13 == 0) &&
      (n % 11 == 0) &&
      (n % 20 == 0) &&
      (n % 18 == 0) &&
      (n % 16 == 0) &&
      (n % 14 == 0) &&
      (n % 12 == 0)
        return n
    end
    i += 1
  end
end

puts problem_5
