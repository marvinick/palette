class Employee < ActiveRecord::Base
  has_many :schedules, through: :polymorpic

  validates :name, :title, :description, presence: true
  validates :name, uniqueness: true

end


