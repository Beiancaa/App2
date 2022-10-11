class CreateSubjects < ActiveRecord::Migration[7.0]
  def change
    create_table :subjects do |t|
      t.boolean :open, default: true
      t.string :name, null: false
      t.string :year, null: false
      t.integer :semister, null: false
      t.belongs_to :teacher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
