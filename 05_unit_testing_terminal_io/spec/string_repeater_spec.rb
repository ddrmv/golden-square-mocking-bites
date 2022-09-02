require 'string_repeater'

RSpec.describe StringRepeater do
  it "outputs a given string a given number of times" do
    terminal = double(:fake_terminal)
    expect(terminal).to receive(:puts)
      .with("Hello. I will repeat a string many times.").ordered
    expect(terminal).to receive(:puts)
      .with("Please enter a string\n").ordered
    expect(terminal).to receive(:gets).and_return("TWIX")
    expect(terminal).to receive(:puts)
      .with("Please enter a number of repeats\n").ordered
    expect(terminal).to receive(:gets).and_return(10).ordered
    expect(terminal).to receive(:puts)
      .with("TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX").ordered
    string_repeater = StringRepeater.new(terminal)
    string_repeater.run
  end
end