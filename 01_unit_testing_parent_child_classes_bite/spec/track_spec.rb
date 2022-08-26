require "track"

RSpec.describe Track do
  it "finds a match when title matches" do
    track = Track.new("title one two", "artist three four")
    expect(track.matches?("one")).to eq true
  end

  it "finds a match when artist matches" do
    track = Track.new("title one two", "artist three four")
    expect(track.matches?("three")).to eq true
  end

  it "doesn't find a match when there isn't one" do
    track = Track.new("title one two", "artist three four")
    expect(track.matches?("five")).to eq false
  end
end