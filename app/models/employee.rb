class Employee < ActiveRecord::Base
  has_many :schedules
  has_many :posts
  validates :name, presence: true, uniqueness: true
  validates :password, presence: true, on: :create
  has_secure_password validations: false
end