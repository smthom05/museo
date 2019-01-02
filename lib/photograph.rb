require './lib/artist'

class Photograph < Artist

  attr_reader :id,
              :name,
              :artist_id,
              :year,
              :photographs

  def initialize(attributes)
    @id = attributes[:id]
    @name = attributes[:name]
    @artist_id = attributes[:artist_id]
    @year = attributes[:year]
    @photographs = []
  end

  def add_photograph(photograph)
    @photographs << Photograph.new(photograph)
  end

  def add_artist(artist)
    super
  end

end
