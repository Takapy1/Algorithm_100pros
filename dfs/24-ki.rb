
=begin 
  point
  - dfsのやり方、親に行かない方法
  - 
=end
# AC回答
N, Q = gets.split.map &:to_i
$to = Array.new(N) { [] }
$cnts = Array.new(N) { 0 }

def dfs(v, pp=-1) # 今見ている頂点（部分木の親, pp：どこからきたのか
  ajs = $to[v]
  ajs.each do |u|
    next if u == pp # 親に行こうとしたら飛ばす
    $cnts[u] += $cnts[v]
    dfs(u, v)
  end
end

(N-1).times do |i|
  a, b = gets.split.map(&:to_i).map { |x| x -= 1 }
  $to[a] << b
  $to[b] << a
end

Q.times do |j|
  pp, x = gets.split.map(&:to_i)
  pp -= 1
  $cnts[pp] += x
end
dfs(0)
puts $cnts.join(" ")