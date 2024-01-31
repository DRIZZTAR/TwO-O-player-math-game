class Question
  def num_between_1_to_20
    rand(1..20)
  end

  def random_operator
    ['+', '-', '*', '/'].sample
  end
  
  def ask_question(current_player)
    num1 = num_between_1_to_20
    num2 = num_between_1_to_20
    operator = random_operator
    correct_answer = calculate_answer(num1, num2, operator)

    puts "#{current_player.name}: What does #{num1} #{operator} #{num2} equal?"
    player_answer = gets.chomp.to_i

    player_answer == correct_answer # returns true if correct, false if not
  end

  private

  def calculate_answer(num1, num2, operator)
    case operator
    when '+'
      num1 + num2
    when '-'
      num1 - num2
    when '*'
      num1 * num2
    when '/'
      num1 / num2
    end
  end
end