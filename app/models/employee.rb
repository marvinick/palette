class Employee < ActiveRecord::Base
  belongs_to :schedule

  validates :name, :title, :description, presence: true
  validates :name, uniqueness: true
end
