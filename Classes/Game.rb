class Game
  def initialize 
    @players = [Player.new('Batman', 3), Player.new('The Joker', 3)]
    @current_player_index = 0
  end

  def play
    loop do
      current_player = @players[@current_player_index]
      puts "✨✨✨New Turn✨✨✨"

      question = Question.new
      if question.ask_question(current_player)
        puts "#{current_player.name}: YES👏! You are correct!"
      else
        puts "#{current_player.name}: Seriously😳? Incorrect!"
        current_player.update_lives
      end

      show_current_scores

      break if game_over?
      switch_player
    end
  end

  private

  def switch_player
    @current_player_index = (@current_player_index + 1) % @players.length
  end

  def game_over?
    @players.any? { |player| player.lives <= 0 }
  end

  private

  def show_current_scores
    scores = @players.map { |player| player.show_lives }.join(" VS ")
    puts scores
  end
end
