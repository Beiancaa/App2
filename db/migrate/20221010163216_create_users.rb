class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.integer :age, null: false
      t.string :email
      t.string :identifier, null: false

      t.timestamps
    end
    add_index :users, :name, unique: true
    add_index :users, :identifier, unique: true
  end
end
