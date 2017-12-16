text = <<TEXT
I like Java.
I'm studying Ruby.
I don't know well about JavaScript or ECMAScript
TEXT

puts '【言語一覧】'
puts text.scan(/[A-Z][A-Za-z]+/)

puts '--------------------'

text = <<TEXT
住所１：1234567　東京都新宿区１２３−４
住所２：0000000　北海道札幌市000000
TEXT

puts text.gsub(/(\d{3})(\d{4})/, '\1-\2')
