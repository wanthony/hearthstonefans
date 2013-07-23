class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :name
      t.string :player_class
      t.string :quality
      t.string :card_type
      t.string :race
      t.integer :mana_cost
      t.integer :attack_damage
      t.integer :health
      t.text :description

      t.timestamps
    end
  end
end
