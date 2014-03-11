class Message < ActiveRecord::Base
  belongs_to :employee

  validates :note, :user, presence: true
  validates :user, length: {maximum: 10}
end