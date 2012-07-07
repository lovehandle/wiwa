class CreateDreamSubmissions < ActiveRecord::Migration
  def change
    create_table :dream_submissions do |t|
      t.string :first_name
      t.string :last_name
      t.string :city
      t.string :state
      t.string :country
      t.text :dream
      t.integer :age
      t.string :email

      t.timestamps
    end
  end
end
