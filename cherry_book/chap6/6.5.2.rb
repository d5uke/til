def check_number(num)
  print "#{num}は"
  case num
  when /^\d{3}-\d{4}$/
    puts '郵便番号'
  when /^\d{4}\/\d{1,2}\/\d{1,2}$/
    puts '日付'
  when /^\d+-\d+-\d+$/
    puts '電話番号'
  end
end

numbers = ['03-1234-5678', '123-4567', '2017/12/18']
numbers.map { |n| check_number(n)}
