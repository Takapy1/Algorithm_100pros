N, Q = gets.split.map &:to_i

nodes = Array.new(N) { [] }
(N-1).times do |i|
  a, b = gets.split.map(&:to_i).map { |x| x -= 1 }
  nodes[a] << b
  nodes[b] << a
end

cnts = Array.new(N) { 0 }
Q.times do |j|
  pp, x = gets.split.map(&:to_i)
  

end
# puts cnts.jon(" ")