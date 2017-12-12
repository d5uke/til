# はいと言うまでやり直す
gods = ['日比美思', '水野由結', '中島早貴']
gods.each do |god|
  print "#{god}は好きですか？ => "
  answer = ['はい', 'いいえ'].sample
  puts answer

  redo unless answer == 'はい'
end

puts '---------------------------------'

# 3回聞いてもはいと言わなかったら諦める
gods = ['日比美思', '水野由結', '中島早貴']
count = 0
gods.each do |god|
  print "#{god}は好きですか？ => "
  answer = ['はい', 'まあ', 'うーん', 'いいえ'].sample
  puts answer

  count += 1

  redo if answer != 'はい' && count < 3
  count = 0
end
