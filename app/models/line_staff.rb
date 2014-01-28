class LineStaff < ActiveRecord::Base
  belongs_to :schedule
  belongs_to :draft
end
