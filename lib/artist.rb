class Artist
  attr_accessor :artist, :name
  @@song_count = []
  
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    @@song_count << song
    song.artist = self
  end

  def add_song_by_name(song)
    new_song = Song.new(song)
    @songs << song
    @@song_count << song
    new_song.artist = self
  end

  def self.song_count
    @@song_count.count
  end
end
    