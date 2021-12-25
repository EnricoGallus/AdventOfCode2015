def floor(input)
  floors = input.split('').tally
  floors['('] - floors[')']
end

def basement(input)
  level = 0
  input.each_char.with_index do |char, index|
    char == ')' ? level -= 1 : level += 1
    return index + 1 if level.negative?
  end
end
