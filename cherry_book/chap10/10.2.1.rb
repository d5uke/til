def greeting
  puts 'おはよう'
  # 2個の引数をブロックに渡す
  text = yield 'こんにちは', 12345
  puts text
  puts 'こんばんは'
end

greeting do |text|
  # ブロック引数が1つであれば、2つ目の引数は無視される
  text * 2
end
#=> おはよう
#   こんにちはこんにちは
#   こんばんは

def greeting
  puts 'おはよう'
  # 1個の引数をブロックに渡す
  text = yield 'こんにちは'
  puts text
  puts 'こんばんは'
end

greeting do |text, other|
  # ブロック引数が2つであれば、2つ目の引数はnilになる
  text * 2 + other.inspect
end
#=> おはよう
#   こんにちはこんにちはnil
#   こんばんは
