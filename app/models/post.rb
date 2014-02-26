class Post < ActiveRecord::Base
  belongs_to :employee
  acts_as_list

  validates :chef1, :chef2, :chef3 , presence: true

end