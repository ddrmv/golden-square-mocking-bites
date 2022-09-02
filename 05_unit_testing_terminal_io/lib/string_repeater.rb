class StringRepeater
  def initialize(terminal)
    @terminal = terminal
  end

  def run
    @terminal.puts "Hello. I will repeat a string many times."
    @terminal.puts "Please enter a string\n"
    string = @terminal.gets.chomp
    @terminal.puts "Please enter a number of repeats\n"
    repeat_times = @terminal.gets
    @terminal.puts string * repeat_times
  end
end

# Hello. I will repeat a string many times.
# Please enter a string
# TWIX
# Please enter a number of repeats
# 10
# Here is your result:
# TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX