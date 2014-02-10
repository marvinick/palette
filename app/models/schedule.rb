class Schedule < ActiveRecord::Base
  belongs_to :employee
  validates :day, :shift, presence: true

end
