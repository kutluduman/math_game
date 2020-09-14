class Player
  attr_reader :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def life_down
    @lives -= 1
  end

  def is_down
    @lives == 0
  end

  def new_question
    new_question = Question.new
    new_question.ask_question(name)
    print '> '
    @userchoice = $stdin.gets.chomp
    if new_question.check_result(@userchoice.to_i)
      puts 'YES! You are correct'
    else
      puts 'Seriously? No!'
      life_down
    end
  end
end
