class AddCapacityToSubject < ActiveRecord::Migration[7.0]
  def change
    add_column :subjects, :capacity, :integer
  end
end
