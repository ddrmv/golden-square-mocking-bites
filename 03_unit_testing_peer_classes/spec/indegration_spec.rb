require "secret_diary"
require "diary"

RSpec.describe "integration" do
  it "reads an unlocked diary" do
    diary = Diary.new("diary contents")
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq "diary contents"
  end

  it "raises error when reading new diary" do
    diary = Diary.new("diary contents")
    secret_diary = SecretDiary.new(diary)
    expect { secret_diary.read } .to raise_error "Go away!"
  end
end