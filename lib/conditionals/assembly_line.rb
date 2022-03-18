# frozen_string_literal: true

# Assembly line exercise
class AssemblyLine
  CARS_PRODUCED_PER_HOUR = 221

  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    if @speed <= 4
      @speed * CARS_PRODUCED_PER_HOUR
    elsif @speed >= 5 && @speed <= 8
      @speed * CARS_PRODUCED_PER_HOUR * 0.90
    elsif @speed == 9
      @speed * CARS_PRODUCED_PER_HOUR * 0.80
    else
      @speed * CARS_PRODUCED_PER_HOUR * 0.77
    end
  end

  def working_items_per_minute
    items = production_rate_per_hour / 60
    items.floor
  end
end
