# numbers = [1, 2, 3, 4, 5]
# new_numbers = numbers.map { |n| n * 10 }
# puts new_numbers

a = [1, 2, 3]


if a.delete(1)
  p('削除成功')
end

p a
# p a.delete(1) { p('削除失敗') }
#
