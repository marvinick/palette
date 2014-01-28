class Draft < ActiveRecord::Base
  has_many :line_staffs, dependent: :destroy
end
