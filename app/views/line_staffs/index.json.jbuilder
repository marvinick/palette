json.array!(@line_staffs) do |line_staff|
  json.extract! line_staff, :id, :employee_id, :draft_id
  json.url line_staff_url(line_staff, format: :json)
end
