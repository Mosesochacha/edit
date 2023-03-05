class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :name, null: false
      t.string :breed, null: false
      t.integer :age, null: false
      t.references :user, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end