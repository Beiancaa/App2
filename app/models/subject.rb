class Subject < ApplicationRecord
  belongs_to :teacher
  has_many :enrollments

  validates :name, presence: true
  validates :year, presence: true
  validates :capacity, presence: true
  validates :semister, presence: true
end
