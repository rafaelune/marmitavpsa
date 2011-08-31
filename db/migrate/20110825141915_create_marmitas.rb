class CreateMarmitas < ActiveRecord::Migration
  def self.up
    create_table :marmitas do |t|
      t.string :pessoa
      t.string :descricao

      t.timestamps
    end
  end

  def self.down
    drop_table :marmitas
  end
end
