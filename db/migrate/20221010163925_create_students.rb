class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :level, null: false

      t.timestamps
    end
  end
end
