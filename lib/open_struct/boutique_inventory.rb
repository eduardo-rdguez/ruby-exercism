# frozen_string_literal: true

# Boutique inventory improvements exercise
class BoutiqueInventory
  Item = Struct.new(:price, :name, :quantity_by_size)

  attr_reader :items

  def initialize(items)
    @items = items.map do |item|
      Item.new(
        item.fetch(:price),
        item.fetch(:name),
        item.fetch(:quantity_by_size)
      )
    end
  end

  def item_names
    items.map(&:name).sort
  end

  def total_stock
    items.sum do |item|
      item.quantity_by_size.values.sum
    end
  end
end
