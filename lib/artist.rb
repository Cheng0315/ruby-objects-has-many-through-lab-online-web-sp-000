class Artist
  attr_reader :name, :songs, :genres
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(title, genre)
    song = Song.new(self, title, genre)
    songs << song
    genres << genre
    song.artist = self
    song
  end

end
