require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable::ClassMethods
  extend Findable
  include Memorable::InstanceMethods
  include Paramable

  @@songs = []

  def initialize
    super
  end

  def self.find_by_name(name)
    super
  end

  def self.all
    @@songs
  end

  def self.reset_all
    super
  end

  def self.count
    super
  end

  def artist=(artist)
    @artist = artist
  end

  def to_param
    super
  end
end
