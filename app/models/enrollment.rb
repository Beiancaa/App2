class Enrollment < ApplicationRecord
  belongs_to :student
  belongs_to :subject

  validates :date, presence: true
  
  after_destroy :open_subject

  private

  def open_subject
    if subject.open == false
      subject.update_attribute :open, "true"
      subject.save
    end
  end

end
