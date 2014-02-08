class Employee < ActiveRecord::Base
  has_many :schedules

  validates :name, :title, :description, presence: true
  validates :name, uniqueness: true

end


