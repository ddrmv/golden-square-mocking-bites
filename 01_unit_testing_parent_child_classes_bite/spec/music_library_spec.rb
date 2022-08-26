require "music_library"

RSpec.describe MusicLibrary do
  context "when empty" do
    describe "#all" do
      it "returns empty list" do
        music_library = MusicLibrary.new
        expect(music_library.all).to eq []
     end     
    end

    describe "#search" do
      it "returns empty list" do
        music_library = MusicLibrary.new
        expect(music_library.search("search string")).to eq []
      end
    end
  end

  context "given multiple entries" do
    describe "#all" do
      it "returns all entries" do
        music_library = MusicLibrary.new
        track_1 = double :track
        track_2 = double :track
        music_library.add(track_1)
        music_library.add(track_2)
        expect(music_library.all).to eq [track_1, track_2]
     end     
    end
  end

  context "given multiple entries" do
    describe "#search" do
      it "returns entries matching the title" do
        music_library = MusicLibrary.new
        track_1 = double :track
        track_2 = double :track
        expect(track_1).to receive(:matches?).with("two").and_return(false)
        expect(track_2).to receive(:matches?).with("two").and_return(true)
        music_library.add(track_1)
        music_library.add(track_2)
        expect(music_library.search("two")).to eq [track_2]
      end
    end
  end
end