# frozen_string_literal: true

file = File.new('Advent of Code/Day 1/data.txt')

maximum_calories = 0
calories = 0

file.each_line do |line|
  if line != "\n"
    calories += line.to_i
  else
    maximum_calories = calories if calories > maximum_calories
    calories = 0
  end
end

puts maximum_calories
