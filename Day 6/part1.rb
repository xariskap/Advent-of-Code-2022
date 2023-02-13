# frozen_string_literal: true

window = 4
file = File.new('Advent of Code/Day 6/data.txt')
file.each_line do |line|
  times = line.length - window
  times.times do |char|
    marker = line[char...char + window]
    if marker.split('').group_by(&:itself).size == window
      p char + window
      break
    end
  end
end
