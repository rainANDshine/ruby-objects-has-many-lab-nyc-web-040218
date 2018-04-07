class Artist
  attr_accessor :artist, :name, :songs
  @@song_count = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
    @@song_count << song
  end

  def add_song_by_name(song)
    new_song = Song.new(song)
    new_song.artist = self
    @songs << song
    @@song_count << song
  end

  def self.song_count
    @@song_count.count
  end
end
