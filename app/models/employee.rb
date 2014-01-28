class Employee < ActiveRecord::Base
  belongs_to :schedule

  validates :name, :title, :description, presence: true
  validates :name, uniqueness: true

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
