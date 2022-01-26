
N = gets.to_i
ans = 0
1.step(N, 2) do |num|
  cnt = 0
  (1..num).each do |i|
    cnt += 1 if num % i == 0
  end
  ans += 1 if cnt == 8
end
puts ans