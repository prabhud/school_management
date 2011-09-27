require 'test_helper'

class StudPreScDetailsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => StudPreScDetail.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    StudPreScDetail.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    StudPreScDetail.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to stud_pre_sc_detail_url(assigns(:stud_pre_sc_detail))
  end

  def test_edit
    get :edit, :id => StudPreScDetail.first
    assert_template 'edit'
  end

  def test_update_invalid
    StudPreScDetail.any_instance.stubs(:valid?).returns(false)
    put :update, :id => StudPreScDetail.first
    assert_template 'edit'
  end

  def test_update_valid
    StudPreScDetail.any_instance.stubs(:valid?).returns(true)
    put :update, :id => StudPreScDetail.first
    assert_redirected_to stud_pre_sc_detail_url(assigns(:stud_pre_sc_detail))
  end

  def test_destroy
    stud_pre_sc_detail = StudPreScDetail.first
    delete :destroy, :id => stud_pre_sc_detail
    assert_redirected_to stud_pre_sc_details_url
    assert !StudPreScDetail.exists?(stud_pre_sc_detail.id)
  end
end
