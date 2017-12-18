class User
  def initialize(name)
    @name = name
  end
end

user = User.new('Taro')
# インスタンス変数はクラスの外部から参照できない
# puts user.name
#=> undefined method `name'

class User2
  # attr_readerなら読み取り専用
  # attr_writerなら書き込み専用
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end

user2 = User2.new('Taro2', 30)
puts user2.name = 'Jiro2'
puts "名前は#{user2.name}で年齢は#{user2.age}"
