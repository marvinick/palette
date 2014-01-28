class Schedule < ActiveRecord::Base
  has_many :employees
  has_many :line_staffs

   before_destroy :make_sure_not_referenced_by_any_line_staffs

   private

  def make_sure_not_referenced_by_any_line_staffs
    if line_staffs.empty?
      return true
    else
      errors.add(:base, 'Line Items presents')
      return false
    end
  end
end
