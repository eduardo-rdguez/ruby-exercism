# frozen_string_literal: true

# Resistor color duo exercise
class ResistorColorDuo
  BAND_COLORS = %w[black brown red orange yellow green blue violet grey white].freeze

  def self.value(bands)
    resistance(bands).join.to_i
  end

  def self.resistance(bands)
    bands.take(2).map do |color|
      BAND_COLORS.find_index(color)
    end
  end
end
