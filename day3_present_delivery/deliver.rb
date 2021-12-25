def deliver(instructions)
  delivered = {}
  position = [0, 0]
  delivered[position] = 1
  instructions.each_char do |char|
    position = new_position(char, position)
    delivered.key?(position) ? delivered[position] += 1 : delivered[position] = 1
  end

  delivered.length
end

def new_position(char, position)
  x, y = position
  case char
  when '^' then [x, y + 1]
  when 'v' then [x, y - 1]
  when '>' then [x + 1, y]
  when '<' then [x - 1, y]
  end
end
