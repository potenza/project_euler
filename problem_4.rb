def palindromes max
  max *= max
  while max > 0
    yield max if max.to_s == max.to_s.reverse
    max -= 1
  end
end

def largest_palindrome max
  min = (max * 0.1).ceil
  palindromes(max) do |p|
    (min..max).to_a.reverse.each do |i|
      r = p.divmod(i)
      return p if r[1] == 0 && r[0] >= min && r[0] <= max
    end
  end
end

puts largest_palindrome 999
