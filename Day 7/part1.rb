# frozen_string_literal: true

cwd = []
directory_sizes = Hash.new { |h, k| h[k] = 0 }

file = File.new('Advent of Code/Day 7/data.txt')
file.each_line do |line|
  line = line.strip.split(' ')
  case line
  in ['$', 'cd', '..']
    cwd.pop
  in ['$', 'cd', dir]
    cwd << dir
  in ['$', 'ls']
  in ['dir', directory_name]
  in [file_size, file_name]
    # cwd.length.times { |index| directory_sizes[cwd[0..index]] += file_size.to_i }
    # cwd.each { |dir| directory_sizes[dir] += file_size.to_i }
    cwd.each { |dir| directory_sizes[dir]  += 1 }
  end
end

# p directory_sizes.select { |key, value| value <= 100000 }.values.sum
puts directory_sizes
