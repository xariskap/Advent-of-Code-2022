# frozen_string_literal: true

win_lose = {
  'A' => %w[Z Y], 'B' => %w[X Z], 'C' => %w[Y X]
}

points = {
  'X' => 1, 'Y' => 2, 'Z' => 3,
  'A' => 1, 'B' => 2, 'C' => 3
}

def fight(first_gesture, second_gesture, win_lose_list, points)
  return 0 + points[win_lose_list[first_gesture][0]] if second_gesture == 'X' # enemy won
  return 3 + points[first_gesture] if second_gesture == 'Y' # drawback

  6 + points[win_lose_list[first_gesture][1]] # enemy lost
end

file = File.new('Advent of Code/Day 2/data.txt')
total_points = 0

file.each_line do |line|
  gestures = line.split(' ')
  total_points += fight(gestures[0], gestures[1], win_lose, points)
end

puts total_points
