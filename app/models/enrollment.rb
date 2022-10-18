class Enrollment < ApplicationRecord
  belongs_to :student
  belongs_to :subject

  validates :date, presence: true
  
  after_create :check_subject_capacity
  after_destroy :open_subject

  private

  def check_subject_capacity
    if subject.enrollments.count == subject.capacity
      subject.update_attribute :open, "false"
      subject.save
    end
  end

  def open_subject
    if subject.open == false
      subject.update_attribute :open, "true"
      subject.save
    end
  end

end
