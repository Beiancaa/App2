class Subject < ApplicationRecord
  belongs_to :teacher

  validates :name, presence: true
  validates :year, presence: true
  validates :semister, presence: true
end
