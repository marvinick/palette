class Message < ActiveRecord::Base
  belongs_to :employee

  validates :note, presence: true
end