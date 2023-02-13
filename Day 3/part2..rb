# frozen_string_literal: true

file = File.new('Advent of Code/Day 3/data.txt')
lowercase = ('a'..'z').zip(1..26).to_h
capital = ('A'..'Z').zip(27..52).to_h
priority_sum = 0

file.each_slice(3) do |three_lines|
  first_line = three_lines[0].strip.split('')
  second_line = three_lines[1].strip.split('')
  third_line = three_lines[2].strip.split('')
  badge = (first_line & second_line & third_line)[0]

  case badge.ord
  when (97..122) then priority_sum += lowercase[badge]
  when (65..90) then priority_sum += capital[badge]
  end
end

p priority_sum
