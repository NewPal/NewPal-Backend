class AddBodyToMessage < ActiveRecord::Migration
  def change
  	add_column :messages, :Body, :string
  end
end
