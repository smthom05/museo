require 'minitest/autorun'
require 'minitest/pride'
require './lib/curator'

class CuratorTest < Minitest::Test

  def setup
    @photo_1 = {
  id: "1",
  name: "Rue Mouffetard, Paris (Boy with Bottles)",
  artist_id: "1",
  year: "1954"
  }

  @photo_2 = {
    id: "2",
    name: "Moonrise, Hernandez",
    artist_id: "2",
    year: "1941"
  }

  @artist_1 = {
  id: "1",
  name: "Henri Cartier-Bresson",
  born: "1908",
  died: "2004",
  country: "France"
  }

  @artist_2 = {
  id: "2",
  name: "Ansel Adams",
  born: "1902",
  died: "1984",
  country: "United States"
  }

  end

  def test_it_exists
    curator = Curator.new

    assert_instance_of Curator, curator
  end

  def test_it_starts_with_no_artists
    curator = Curator.new

    assert_equal [], curator.artists
  end

  def test_it_starts_with_no_photographs
    curator = Curator.new

    assert_equal [], curator.photographs
  end

  def test_it_can_add_photographs
    curator = Curator.new

    curator.add_photograph(@photo_1)
    curator.add_photograph(@photo_2)

    assert_equal [@photo_1, @photo_2], curator.photographs
  end

  def test_it_can_get_first_photograph
    curator = Curator.new
    curator.add_photograph(@photo_1)
    curator.add_photograph(@photo_2)

    assert_instance_of Photograph, curator.photographs.first
  end

  def test_it_can_get_first_photographs_name
    curator = Curator.new
    curator.add_photograph(@photo_1)
    curator.add_photograph(@photo_2)

    assert_equal "Rue Mouffetard, Paris (Boy with Bottles)", curator.photographs.first.name
  end

  def test_it_can_add_artists
    curator = Curator.new

    curator.add_artist(@artist_1)
    curator.add_artist(@artist_2)

    assert_equal [@artist_1, @artist_2], curator.artists
  end

  def test_it_can_get_first_artist
    curator = Curator.new
    curator.add_artist(@artist_1)
    curator.add_artist(@artist_2)

    assert_instance_of Artist, curator.artists.first
  end

  def test_it_can_get_first_artists_name
    curator = Curator.new
    curator.add_artist(@artist_1)
    curator.add_artist(@artist_2)

    assert_equal "Henri Cartier-Bresson", curator.artists.first.name
  end

  def test_it_can_find_artist_by_id

    curator = Curator.new
    curator.add_artist(@artist_1)
    curator.add_artist(@artist_2)

    assert_equal @artist_1, curator.find_artist_by_id("1")
    assert_equal @artist_2, curator.find_artist_by_id("2")
  end

end
