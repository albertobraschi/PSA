class CreateBoletos < ActiveRecord::Migration
  def self.up
	  create_table :boletos, :force => true do |t|
      t.integer :order_id
      t.string :number, :limit => 15
      t.decimal :total, :precision => 8, :scale => 2, :default => 0.0, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :boletos
  end
end
