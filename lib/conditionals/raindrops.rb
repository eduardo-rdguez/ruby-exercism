# frozen_string_literal: true

# Raindrops exercise
class Raindrops
  SOUNDS = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }.freeze

  def self.convert(factor)
    sounds_by(factor) || factor.to_s
  end

  def self.sounds_by(factor)
    raindrops = SOUNDS.each_key.map do |k|
      SOUNDS[k] if remainder?(factor, k)
    end

    raindrops.join unless raindrops.compact.empty?
  end

  def self.remainder?(factor, sound)
    factor.modulo(sound).zero?
  end
end
