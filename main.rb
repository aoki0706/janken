

while true do
  # ---じゃんけん---
  puts "じゃんけん…"
  puts "1(グー) 2(チョキ) 3(パー) 4(終了)"
  user_hand = gets.chomp.to_i
  if user_hand >= 1 && user_hand <=3
    cpu_hand = rand(2)
    puts "ホイ！"
    puts "--------------"
    hands = ["グー", "チョキ", "パー"]
    user_hand -= 1
    puts "YOU : " + hands[user_hand]
    puts "CPU : " + hands[cpu_hand]
  elsif user_hand == 4
    puts "じゃんけんを終了します"
    break
  else
    puts "1〜4までの数字を入力してください"
    next
  end

  if user_hand == cpu_hand
    puts "引き分け"
    next
  elsif user_hand == 0 && cpu_hand == 1
    result = "win"
  elsif user_hand == 1 && cpu_hand == 2
    result = "win"
  elsif user_hand == 2 && cpu_hand == 0
    result = "win"
  else
    result = "lose"
  end 

  # ---あっち向いてホイ---
  if result == "win"
    puts "じゃんけんはあなたが勝ちました"
    puts "指を指す方向を選んでください"
  elsif result == "lose"
    puts "じゃんけんはあなたが負けました"
    puts "顔の向きを選んでください"
  end
  puts "\nあっち向いて…"
  puts "1(上) 2(右) 3(左) 4(下) 5(終了)"
  user_direction = gets.chomp.to_i
  if user_direction >= 1 && user_direction <=4
    cpu_direction = rand(3)
    puts "ホイ！"
    puts "--------------"
    direction = ["上", "右", "下", "左"]
    user_direction -= 1
    puts "YOU : " + direction[user_direction]
    puts "CPU : " + direction[cpu_direction]
  elsif user_direction == 5
    puts "じゃんけんを終了します"
    break
  else
    puts "1〜5までの数字を入力してください"
    next
  end

  if result == "win"
    if user_direction == cpu_direction
      puts "あなたの勝ちです"
      break
    end
  elsif result == "lose"
    if user_direction == cpu_direction
      puts "あなたの負けです"
      break
    end
  end
end
