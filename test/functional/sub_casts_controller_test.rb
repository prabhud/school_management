require 'test_helper'

class SubCastsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => SubCast.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    SubCast.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    SubCast.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to sub_cast_url(assigns(:sub_cast))
  end

  def test_edit
    get :edit, :id => SubCast.first
    assert_template 'edit'
  end

  def test_update_invalid
    SubCast.any_instance.stubs(:valid?).returns(false)
    put :update, :id => SubCast.first
    assert_template 'edit'
  end

  def test_update_valid
    SubCast.any_instance.stubs(:valid?).returns(true)
    put :update, :id => SubCast.first
    assert_redirected_to sub_cast_url(assigns(:sub_cast))
  end

  def test_destroy
    sub_cast = SubCast.first
    delete :destroy, :id => sub_cast
    assert_redirected_to sub_casts_url
    assert !SubCast.exists?(sub_cast.id)
  end
end
