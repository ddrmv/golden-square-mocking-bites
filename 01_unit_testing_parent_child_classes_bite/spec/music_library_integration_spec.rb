require "music_library"
require "track"

RSpec.describe MusicLibrary do
  context "given multiple entries" do
    describe "#all" do
      it "returns all entries" do
        music_library = MusicLibrary.new
        track_1 = Track.new("title 1", "artist 1")
        track_2 = Track.new("title 2", "artist 2")
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
        track_1 = Track.new("title 1", "artist 1")
        track_2 = Track.new("title 2", "artist 2")
        music_library.add(track_1)
        music_library.add(track_2)
        expect(music_library.search("title 2")).to eq [track_2]
     end

     it "returns entries matching the artist" do
        music_library = MusicLibrary.new
        track_1 = Track.new("title 1", "artist 1")
        track_2 = Track.new("title 2", "artist 2")
        track_3 = Track.new("title 3", "artist 2")
        music_library.add(track_1)
        music_library.add(track_2)
        music_library.add(track_3)
        expect(music_library.search("artist 2")).to eq [track_2, track_3]
      end

      it "returns entries matching the artist" do
        music_library = MusicLibrary.new
        track_1 = Track.new("title 1", "artist 1")
        track_2 = Track.new("title 2", "artist 2")
        track_3 = Track.new("title 3", "artist 2")
        music_library.add(track_1)
        music_library.add(track_2)
        music_library.add(track_3)
        expect(music_library.search("artist 2")).to eq [track_2, track_3]
      end

      it "returns different entries matching separaetly trask or artist" do
        music_library = MusicLibrary.new
        track_1 = Track.new("popular_word", "artist 1")
        track_2 = Track.new("title 2", "popular_word")
        track_3 = Track.new("title 3", "artist 2")
        music_library.add(track_1)
        music_library.add(track_2)
        music_library.add(track_3)
        expect(music_library.search("popular_word")).to eq [track_1, track_2]
      end
    end
  end
end