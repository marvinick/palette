require 'test_helper'

class LineStaffsControllerTest < ActionController::TestCase
  setup do
    @line_staff = line_staffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:line_staffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create line_staff" do
    assert_difference('LineStaff.count') do
      post :create, line_staff: { draft_id: @line_staff.draft_id, employee_id: @line_staff.employee_id }
    end

    assert_redirected_to line_staff_path(assigns(:line_staff))
  end

  test "should show line_staff" do
    get :show, id: @line_staff
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @line_staff
    assert_response :success
  end

  test "should update line_staff" do
    patch :update, id: @line_staff, line_staff: { draft_id: @line_staff.draft_id, employee_id: @line_staff.employee_id }
    assert_redirected_to line_staff_path(assigns(:line_staff))
  end

  test "should destroy line_staff" do
    assert_difference('LineStaff.count', -1) do
      delete :destroy, id: @line_staff
    end

    assert_redirected_to line_staffs_path
  end
end
