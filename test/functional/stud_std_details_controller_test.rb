require 'test_helper'

class StudStdDetailsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => StudStdDetail.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    StudStdDetail.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    StudStdDetail.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to stud_std_detail_url(assigns(:stud_std_detail))
  end

  def test_edit
    get :edit, :id => StudStdDetail.first
    assert_template 'edit'
  end

  def test_update_invalid
    StudStdDetail.any_instance.stubs(:valid?).returns(false)
    put :update, :id => StudStdDetail.first
    assert_template 'edit'
  end

  def test_update_valid
    StudStdDetail.any_instance.stubs(:valid?).returns(true)
    put :update, :id => StudStdDetail.first
    assert_redirected_to stud_std_detail_url(assigns(:stud_std_detail))
  end

  def test_destroy
    stud_std_detail = StudStdDetail.first
    delete :destroy, :id => stud_std_detail
    assert_redirected_to stud_std_details_url
    assert !StudStdDetail.exists?(stud_std_detail.id)
  end
end
