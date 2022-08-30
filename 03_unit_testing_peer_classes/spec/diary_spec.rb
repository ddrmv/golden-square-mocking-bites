require "diary"

RSpec.describe Diary do
  it "reads an unlocked diary" do
    diary = Diary.new("diary contents")
    expect(diary.read).to eq "diary contents"
  end
end