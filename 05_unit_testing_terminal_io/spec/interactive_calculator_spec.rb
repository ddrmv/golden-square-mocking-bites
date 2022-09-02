require 'interactive_calculator'

RSpec.describe InteractiveCalculator do
  it "takes two numbers as input and shows subtraction" do
    terminal = double(:fake_terminal)
    expect(terminal).to receive(:puts).with("Please enter a number\n").ordered
    expect(terminal).to receive(:gets).and_return("4").ordered
    expect(terminal).to receive(:puts).with("Please enter another number\n").ordered
    expect(terminal).to receive(:gets).and_return("3").ordered
    expect(terminal).to receive(:puts).with("Here is your result:").ordered
    expect(terminal).to receive(:puts).with("4 - 3 = 1").ordered
 
    interactive_calculator = InteractiveCalculator.new(terminal)
    interactive_calculator.run
  end
end