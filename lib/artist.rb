class Artist
  attr_accessor :name, :genre, :song
  @@all = []

  def initialize(name)
    @songs = []
    @name = name
    @@all << self
  end
  def new_song(songs, genre)
    s = Song.new(name, genre)
    s.songs
  end

  def songs
      Song.all.select do |song|
      song.artist == self
    end
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end
  def self.all
    @@all
  end

  def genres                       
    self.songs.collect do |song|    
      song.genre
    end
  end
end