class CreateTablePagseguro < ActiveRecord::Migration
  def self.up
    create_table :pagseguros do |t|
      t.string :url_retorno
      t.string :token
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :pagseguro
  end
end

