# 初心者歓迎！手と目で覚える正規表現入門・その３「空白文字を自由自在に操ろう」(@jnchito)
# https://qiita.com/jnchito/items/6f0c885c1c4929092578

text = <<-TEXT
def hello(name)
  puts "Hello, \#{name}!"
end

hello('Alice')

hello('Bob')

hello('Carol')
TEXT

# 半角スペースやタブを空に置き換え
puts text.gsub(/^[ \t]+$/, '')
# def hello(name)
#   puts "Hello, #{name}!"
# end
#
# hello('Alice')
#
# hello('Bob')
#
# hello('Carol')
