# frozen_string_literal: true

# Word count exercise
class Phrase
  WORD_REGEX = /\w+'\w+|\w+/.freeze

  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    phrase
      .scan(WORD_REGEX)
      .map(&:downcase)
      .tally
  end
end
