require "secret_diary"

RSpec.describe "integration" do
  it "unlocks and reads a diary" do
    fake_diary = double(:diary, read: "diary contents")
    secret_diary = SecretDiary.new(fake_diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq "diary contents"
  end

  it "raises error when reading new diary" do
    fake_diary = double(:diary, read: "diary contents")
    secret_diary = SecretDiary.new(fake_diary)
    expect { secret_diary.read } .to raise_error "Go away!"
  end
end