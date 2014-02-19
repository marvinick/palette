class Employee < ActiveRecord::Base
  has_many :schedules

  validates :name, presence: true
end