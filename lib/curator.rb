require './lib/photograph'

class Curator < Photograph

  attr_reader :artists,
              :photographs

  def initialize
    @artists = []
    @photographs = []
  end

  def add_photograph(photograph)
    super
  end

  def add_artist(artist)
    super
  end

  def find_artist_by_id(id)
    @artists.each do |artist|
      if artist.id == id
        return artist
      end
    end
  end

  def find_photograph_by_id(id)
    @photographs.each do |photograph|
      if photograph.id == id
         return photograph
      end
    end
  end

end
