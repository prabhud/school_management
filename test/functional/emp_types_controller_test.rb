require 'test_helper'

class EmpTypesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => EmpType.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    EmpType.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    EmpType.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to emp_type_url(assigns(:emp_type))
  end

  def test_edit
    get :edit, :id => EmpType.first
    assert_template 'edit'
  end

  def test_update_invalid
    EmpType.any_instance.stubs(:valid?).returns(false)
    put :update, :id => EmpType.first
    assert_template 'edit'
  end

  def test_update_valid
    EmpType.any_instance.stubs(:valid?).returns(true)
    put :update, :id => EmpType.first
    assert_redirected_to emp_type_url(assigns(:emp_type))
  end

  def test_destroy
    emp_type = EmpType.first
    delete :destroy, :id => emp_type
    assert_redirected_to emp_types_url
    assert !EmpType.exists?(emp_type.id)
  end
end
