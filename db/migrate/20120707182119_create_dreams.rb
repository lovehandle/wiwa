class CreateDreams < ActiveRecord::Migration
  def change
    create_table :dreams do |t|
      t.string :name
      t.text :description
      t.boolean :visible, :default => false
      t.integer :age
      t.string :location

      t.timestamps
    end
  end
end
