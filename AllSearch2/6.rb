N = gets.to_i
S = gets.chomp

ans = 0
('000'..'999').each do |t|
  i, j, k = t.chars
  ans += 1 if (a = S.index(i, 0)) && (b = S.index(j, a+1)) && (c = S.index(k, b+1))
end
puts ans

# (0..9).each do |a|
#   (0..9).each do |b|
#     (0..9).each do |c|
#       t = (a.to_s + b.to_s + c.to_s).chars
#       cursor = 0
#       S.each do |s|
#         cursor += 1 if s == t[cursor]
#       end
#       ans += 1 if cursor == 3
#     end
#   end
# end
