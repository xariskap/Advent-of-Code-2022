# frozen_string_literal: true

win_lose = {
  'A' => %w[Z Y],  'B' => %w[X Z],  'C' => %w[Y X]
}

points = {
  'X' => 1, 'Y' => 2, 'Z' => 3
}

def fight(first_gesture, second_gesture, win_lose_list, points)
  return 0 + points[second_gesture] if second_gesture == win_lose_list[first_gesture][0] # enemy won
  return 6 + points[second_gesture] if second_gesture == win_lose_list[first_gesture][1] # enemy lost

  3 + points[second_gesture] # drawback
end

file = File.new('Advent of Code/Day 2/data.txt')
total_points = 0

file.each_line do |line|
  gestures = line.split(' ')
  total_points += fight(gestures[0], gestures[1], win_lose, points)
end

puts total_points
