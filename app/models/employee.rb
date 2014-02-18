class Employee < ActiveRecord::Base
  belongs_to :schedule

  validates :name, presence: true
end