class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :animal
      t.text :bio

      t.timestamps
    end
  end
end
