class Card < ActiveRecord::Base
  FILTERABLE_ATTRIBUTES = [:name, :quality, :player_class, :card_type, :race, :mana_cost, :attack_damage, :health]

  def self.filterable_attribute? attribute
    attribute.to_sym.in?(FILTERABLE_ATTRIBUTES)
  end
end
