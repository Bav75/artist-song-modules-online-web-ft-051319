require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs

  extend Memorable::ClassMethods
  extend Findable
  include Memorable::InstanceMethods
  include Paramable


  @@artists = []

  def initialize
    super
    @songs = []
  end

  def self.find_by_name(name)
    super
  end

  def self.all
    @@artists
  end

  def self.reset_all
    super
  end

  def self.count
    super
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  def to_param
    super
  end
end
