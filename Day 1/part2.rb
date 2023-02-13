# frozen_string_literal: true

file = File.new('Advent of Code/Day 1/data.txt')

calories = 0
calories_list = []

file.each_line do |line|
  if line != "\n"
    calories += line.to_i
  else
    calories_list.push(calories)
    calories = 0
  end
end

calories_list = calories_list.sort
puts calories_list.last(3).sum
