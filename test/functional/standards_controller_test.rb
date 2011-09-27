require 'test_helper'

class StandardsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Standard.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Standard.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Standard.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to standard_url(assigns(:standard))
  end

  def test_edit
    get :edit, :id => Standard.first
    assert_template 'edit'
  end

  def test_update_invalid
    Standard.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Standard.first
    assert_template 'edit'
  end

  def test_update_valid
    Standard.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Standard.first
    assert_redirected_to standard_url(assigns(:standard))
  end

  def test_destroy
    standard = Standard.first
    delete :destroy, :id => standard
    assert_redirected_to standards_url
    assert !Standard.exists?(standard.id)
  end
end
