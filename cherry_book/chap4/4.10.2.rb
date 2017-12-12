animals = [['ライオン', 'サイ', 'プテラ'],['トラ', 'ゴリラ', 'トリケラ'],['チーター', 'ゾウ', 'ティラノ']]
catch :done do
  animals[0].shuffle.each do |animal_first|
    animals[1].shuffle.each do |animal_second|
      animals[2].shuffle.each do |animal_third|
        puts "#{animal_first}！#{animal_second}！#{animal_third}！"
        if animal_first == animals[0][0] && animal_second == animals[1][0] && animal_third == animals[2][0]
          # ライオン、トラ、チーターが揃った時に、すべての繰り返し処理を脱出する
          throw :done
        end
      end
    end
  end
end

puts "ラタラタ！ラトラーター！"
