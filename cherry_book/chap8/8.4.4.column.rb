# 文字列をキーにすると、自動的にキーがfreezeされる
country = 'US'
hash = { 'Japan' => 'yen', country => 'dollar' }
p hash.keys[0].frozen? #=> true
p hash.keys[1].frozen? #=> true

# 文字列のキーはコピーされるため、ハッシュ内のキーと元の変数は別のオブジェクトになる
p hash.keys[0].equal?('Japan') #=> false
p hash.keys[1].equal?(country) #=> false
