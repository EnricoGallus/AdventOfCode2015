def area_all(file_name)
  File.readlines(file_name).map { |line| area(line) }.sum
end

def area(input)
  a, b, c = input.strip.split('x').map(&:to_i)
  dimensions = [a * b, a * c, b * c]
  2 * dimensions.sum + dimensions.min
end

def ribbon(input)
  dimensions = input.strip.split('x').map(&:to_i).sort
  dimensions.take(2).sum { |value| value * 2 } + dimensions.inject(:*)
end

def ribbon_all(file_name)
  File.readlines(file_name).map { |line| ribbon(line) }.sum
end