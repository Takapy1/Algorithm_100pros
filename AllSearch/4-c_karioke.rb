# https://atcoder.jp/contests/pakencamp-2019-day3/tasks/pakencamp_2019_day3_c


N, M  = gets.split.map &:to_i
A = N.times.map { gets.split.map &:to_i }
max = -1

[*0...M].combination(2).each do |s1, s2|
  total = 0
  N.times do |i|
    score = [A[i][s1], A[i][s2]].max
    total += score
  end
  max = [max, total].max
end
puts max