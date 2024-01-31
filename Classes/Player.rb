class Player
  attr_reader :name, :lives

  def initialize(name, lives)
    @name = name
    @lives = lives
  end

  def update_lives
    @lives -= 1
  end

  def show_lives
    "#{@name}: #{@lives}/3 left!🥊"
  end

end