# frozen_string_literal: true

require 'minitest/autorun'
require './lib/ternary_operator/moviegoer'

# Test moviegoer exercise
class MoviegoerTest < Minitest::Test
  def test_regular_ticket_price
    moviegoer = Moviegoer.new(59)
    assert_equal 15, moviegoer.ticket_price
  end

  def test_seniors_discount
    moviegoer = Moviegoer.new(60)
    assert_equal 10, moviegoer.ticket_price
  end

  def test_adults_can_see_the_scary_movie
    assert Moviegoer.new(18).watch_scary_movie?
  end

  def test_kids_cant_see_the_scary_movie
    refute Moviegoer.new(17).watch_scary_movie?
  end

  def test_members_get_free_popcorn
    moviegoer = Moviegoer.new(25, member: true)
    assert_equal '🍿', moviegoer.claim_free_popcorn!
  end

  def test_regular_moviegoer_dont_get_free_popcorn
    moviegoer = Moviegoer.new(25, member: false)
    assert_raises(NotMovieClubMemberError) { moviegoer.claim_free_popcorn! }
  end
end
