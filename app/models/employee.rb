class Employee < ActiveRecord::Base
  has_many :schedules
  has_many :posts
  validates :name, presence: true
end