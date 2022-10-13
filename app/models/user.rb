class User < ApplicationRecord
  has_many :students, dependent: :destroy
  has_many :teachers, dependent: :destroy

  validates_uniqueness_of :name
  validates_uniqueness_of :identifier
  validates_uniqueness_of :email
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

  before_create :create_unique_identifier

  private
  def create_unique_identifier
    self.identifier = SecureRandom.hex(3) + "#{Time.now.to_i}"
  end
end
