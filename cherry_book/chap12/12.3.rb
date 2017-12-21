if File.exists?('./secret.txt')
  puts "secret"
elsif Dir.exists?('./chap10')
  puts "chap10"
end
