require 'test_helper'

class RegistersControllerTest < ActionController::TestCase
  setup do
    @register = registers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create register" do
    assert_difference('Register.count') do
      post :create, register: { accepted: @register.accepted, city: @register.city, coladdress: @register.coladdress, collegename: @register.collegename, contactno: @register.contactno, email: @register.email, fname: @register.fname, fphydirname: @register.fphydirname, lname: @register.lname, lphydirname: @register.lphydirname, menwomen: @register.menwomen, pdcontact: @register.pdcontact, pincode: @register.pincode, singdouble: @register.singdouble, sports: @register.sports, state: @register.state }
    end

    assert_redirected_to register_path(assigns(:register))
  end

  test "should show register" do
    get :show, id: @register
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @register
    assert_response :success
  end

  test "should update register" do
    patch :update, id: @register, register: { accepted: @register.accepted, city: @register.city, coladdress: @register.coladdress, collegename: @register.collegename, contactno: @register.contactno, email: @register.email, fname: @register.fname, fphydirname: @register.fphydirname, lname: @register.lname, lphydirname: @register.lphydirname, menwomen: @register.menwomen, pdcontact: @register.pdcontact, pincode: @register.pincode, singdouble: @register.singdouble, sports: @register.sports, state: @register.state }
    assert_redirected_to register_path(assigns(:register))
  end

  test "should destroy register" do
    assert_difference('Register.count', -1) do
      delete :destroy, id: @register
    end

    assert_redirected_to registers_path
  end
end
