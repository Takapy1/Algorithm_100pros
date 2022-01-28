A, B, C, X, Y = gets.split.map &:to_i
MAX = 100000
ans = Float::INFINITY
(0..MAX).each do |i|
  ans = [ans, 2 * C * i + A * [X - i, 0].max + B * [Y - i, 0].max].min
end
puts ans