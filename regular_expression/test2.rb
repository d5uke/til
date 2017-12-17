# 初心者歓迎！手と目で覚える正規表現入門・その２「微妙な違いを許容しつつ置換しよう」(@jnchito)
# https://qiita.com/jnchito/items/64c3fdc53766ac6f2008

text = <<-TEXT
スター・ウォーズを観てきた
スター･ウォーズはおもしろい
一番好きな映画はスター　ウォーズ
今度スターウォーズを観よう
スタウォーズ
TEXT

p text.split(/\n/)
p text.split(/\n/).grep(/スター.?ウォーズ/)

p '--------------------------'

html = <<-HTML
<select name="starwars">
<option value="none"></option>
<option value="vader" selected>ダース・ベイダー</option>
<option value="r2d2">R2-D2</option>
<option value="luke">ルーク・スカイウォーカー</option>
</select>
HTML

replaced = html.gsub(/<option value="(\w+)"(?: selected)?>(.*?)<\/option>/, '\1,\2')

puts replaced
# <select name="game_console">
# none,
# vader,ダース・ベイダー
# r2d2,R2-D2
# luke,ルーク・スカイウォーカー
# </select>

p '--------------------------'

replaced = html.gsub(/<option value="(\w+)"(?: selected)?>([^<]*)<\/option>/, '\1,\2')

puts replaced
