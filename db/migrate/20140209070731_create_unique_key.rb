class CreateUniqueKey < ActiveRecord::Migration
  def change
    create_table :unique_keys do |t|
    	t.string  :KeyName
    	t.integer :currentKey

     	t.timestamps
    end
  end
end
