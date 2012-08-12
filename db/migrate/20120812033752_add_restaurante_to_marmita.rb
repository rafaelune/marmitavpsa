class AddRestauranteToMarmita < ActiveRecord::Migration
  def self.up
  	add_column :marmitas, :restaurante, :string
  end

  def self.down
  	remove_column :marmitas, :restaurante
  end
end
