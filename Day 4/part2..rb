# frozen_string_literal: true

def get_points(data)
  seperated_data = data.strip.split(',')
  first_line = seperated_data[0].split('-').map(&:to_i)
  second_line = seperated_data[1].split('-').map(&:to_i)

  [first_line, second_line]
end

def overlaps?(x, y)
  true if ([x[1], y[1]].min - [x[0], y[0]].max) >= 0
end

intersection_counter = 0
file = File.new('Advent of Code/Day 4/data.txt')
file.each_line do |line|
  x, y = get_points(line)
  intersection_counter += 1 if overlaps?(x, y)
end

p intersection_counter
