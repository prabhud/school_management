module ApplicationHelper
  
  def random
    Time.now.strftime("%d%m%Y%H%M%S")
  end
  
  def available_satus?(value)
    value==true ? (image_tag "/images/ava_ico.gif", :border => 0, :title => "Available") : (image_tag "/images/un_ava_ico.png", :border => 0, :title => "Unavailable")
  end
  
  def mark_required(object, attribute)  
    "*" if object.class.validators_on(attribute).map(&:class).include? ActiveModel::Validations::PresenceValidator  
  end  
  
  def paginate_sno
    ((params[:per_page].to_i*params[:page].to_i)-(params[:per_page].to_i-1))
  end
  
  def link_to_back(name, options = {}, html_options = {})
    link_to((image_tag "/images/back_ico.png", :border => 0, :title => (name || "Back")), options, html_options)
  end
  
  def link_to_new(name, options = {}, html_options = {})
    link_to((image_tag "/images/add_ico.png", :border => 0, :title => (name || "Add New Record")), options, html_options)
  end
  
  def link_to_edit(name, options = {}, html_options = {})
    link_to((image_tag "/images/edit_ico.png", :border => 0, :title => name), options, html_options)
  end
  
  def link_to_destroy(name, options = {}, html_options = {})
    link_to((image_tag "/images/delete_ico.png", :border => 0, :title => name), options, html_options)
  end
  
  def link_to_show(name, options = {}, html_options = {})
    link_to((image_tag "/images/view_ico.png", :border => 0, :title => name, :alt => name), options, html_options)
  end

  def reset_form
    "<a href='#' id='reset_form_fields' rel='#{request.fullpath}'><img src='/images/reset_ico.jpeg' alt = 'Reset' title = 'Reset form value' style='background:transparent;'></img></a>".html_safe
  end
end
