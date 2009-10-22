class CreatePaymentTypes < ActiveRecord::Migration
  def self.up
    create_table :payment_types do |t|
      t.string :nome
      t.boolean :status

      t.timestamps
    end
  end

  def self.down
    drop_table :payment_types
  end
end

