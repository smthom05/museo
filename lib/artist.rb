class Artist 

  attr_reader :id,
              :name,
              :born,
              :died,
              :country,
              :artists

  def initialize(attributes)
    @id = attributes[:id]
    @name = attributes[:name]
    @born = attributes[:born]
    @died = attributes[:died]
    @country = attributes[:country]
    @artists = []
  end

  def add_artist(artist)
    @artists << Artist.new(artist)
  end
end
