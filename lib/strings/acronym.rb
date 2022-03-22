# frozen_string_literal: true

# Acronym exercise
class Acronym
  def self.abbreviate(phrase)
    phrase.scan(/\b[a-z]/i).join.upcase
  end
end
