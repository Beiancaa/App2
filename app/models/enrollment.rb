class Enrollment < ApplicationRecord
  belongs_to :student
  belongs_to :subject

  validates :date, presence: true
  
end
