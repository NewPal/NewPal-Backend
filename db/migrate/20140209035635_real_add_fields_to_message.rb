class RealAddFieldsToMessage < ActiveRecord::Migration
  def change

  	add_column :messages, :State, :string
  	add_column :messages, :Country, :string
  	add_column :messages, :City, :string
  	add_column :messages, :PhoneNumber, :string
  	add_column :messages, :Zip, :string
  	add_column :messages, :ClientId, :Integer

  	

    add_index :messages, :State
    add_index :messages, :Country
    add_index :messages, :Zip
    add_index :messages, :PhoneNumber
    add_index :messages, :ClientId

  end
end
