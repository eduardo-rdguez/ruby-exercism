# frozen_string_literal: true

# Custom not movie club member error
class NotMovieClubMemberError < RuntimeError
end

# Moviegoer exercise
class Moviegoer
  OLD_AGE = 60
  LEGAL_AGE = 18

  def initialize(age, member: false)
    @age = age
    @member = member
  end

  def ticket_price
    @age >= OLD_AGE ? 10 : 15
  end

  def watch_scary_movie?
    @age >= LEGAL_AGE
  end

  def claim_free_popcorn!
    @member ? '🍿' : (raise NotMovieClubMemberError)
  end
end
