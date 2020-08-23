puts "今日はどの項目を何分勉強しましたか？？"

print "学習項目を入力 ＞"

learning_content = gets.chomp

print "学習時間を入力 ＞"

learning_time = gets.to_i

square_num = learning_time / 15

puts "学習記録"

puts "#{learning_content}　#{"■ " * square_num}"
