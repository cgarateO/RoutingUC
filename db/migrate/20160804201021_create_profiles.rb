class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :lastName
      t.integer :age
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps null: false
    end
  end
end
