class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
    	t.date	:date
    	t.text	:text
      t.timestamps null: false
    end
  end
end
