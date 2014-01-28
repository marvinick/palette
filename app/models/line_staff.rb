class LineStaff < ActiveRecord::Base
  belongs_to :employee
  belongs_to :draft
end
