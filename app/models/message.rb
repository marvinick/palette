class Message < ActiveRecord::Base
  belongs_to :employee

  validates :note, :user, presence: true
end