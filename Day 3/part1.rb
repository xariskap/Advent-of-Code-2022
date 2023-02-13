# frozen_string_literal: true

file = File.new('Advent of Code/Day 3/data.txt')
lowercase = ('a'..'z').zip(1..26).to_h
capital = ('A'..'Z').zip(27..52).to_h
priorities_sum = 0

file.each_line do |line|
  line = line.strip
  rucksack_size = line.length
  first_compartment = line[0...rucksack_size / 2].split('')
  second_compartment = line[rucksack_size / 2...].split('')

  common_type = (first_compartment & second_compartment)[0]

  case common_type.ord
  when (97..122) then priorities_sum += lowercase[common_type]
  when (65..90) then priorities_sum += capital[common_type]
  end
end

p priorities_sum
