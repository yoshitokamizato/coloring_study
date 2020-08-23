require "thor"
require "pry"

learning_content_list = []

loop do
  puts "今日はどの項目を何分勉強しましたか？？"

  print "学習項目を入力 ＞"

  name = gets.chomp

  print "学習時間を入力 ＞"

  time = gets.to_i


  learning_content = {name: name, time: time}

  learning_content_name_list = []

  learning_content_list.each do |learning_content|
    learning_content_name_list << learning_content[:name]
  end

  if learning_content_name_list.include?(name)
    learning_content_list.map! do |learning_content|
      if name == learning_content[:name]
        {name: name, time: learning_content[:time] + time}
      else
        learning_content
      end
    end
  else
    learning_content_list << {name: name, time: time}
  end

  puts "学習記録"

  learning_content_list.each do |learning_content|
    square_num = learning_content[:time] / 15
    puts "#{learning_content[:name]}　#{"■ " * square_num}"
  end

  puts "引き続き入力しますか？"
  puts "YES -> y"
  puts "No -> n"

  answer = gets.chomp
  break if answer == "n"
end
