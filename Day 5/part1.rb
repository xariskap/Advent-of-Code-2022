# frozen_string_literal: true

char_location = [1, 5, 9, 13, 17, 21, 25, 29, 33]
crates = [[], [], [], [], [], [], [], [], []]

def parse_instruction(instruction)
  temp_list = instruction.split(' ')

  [temp_list[1].to_i, temp_list[3].to_i, temp_list[5].to_i]
end

def transaction(instruction, crates)
  (0...instruction[0]).each do
    crate = crates[instruction[1] - 1].shift
    crates[instruction[2] - 1].unshift(crate)
  end
end

file = File.new('Advent of Code/Day 5/data.txt')
file.each_line do |line|
  if file.lineno < 9
    char_location.each_with_index do |location, index|
      crates[index].append(line[location]) if line[location] != ' '
    end
  elsif file.lineno > 10
    instruction = parse_instruction(line)
    transaction(instruction, crates)
  end
end

crates.each { |crate| print crate[0] }
