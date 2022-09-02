class InteractiveCalculator
  def initialize(terminal)
    @terminal = terminal
  end

  def run
    @terminal.puts "Please enter a number\n"
    first_number = @terminal.gets.chomp().to_i
    @terminal.puts "Please enter another number\n"
    second_number = @terminal.gets.chomp().to_i
    @terminal.puts "Here is your result:"
    @terminal.puts "#{first_number} - #{second_number} = #{first_number - second_number}"
  end
end

# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1