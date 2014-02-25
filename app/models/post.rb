class Post < ActiveRecord::Base
  belongs_to :employee
  acts_as_list

end