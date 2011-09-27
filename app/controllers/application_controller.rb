class ApplicationController < ActionController::Base
  protect_from_forgery
  def record_not_found
    render :text => "404 Not Found", :status => 404
  end

  def rescue_action_in_public(exception)
    #Notifier.deliver_exception(request,exception,request.env['HTTP_HOST'])
    case exception
    when ActiveRecord::RecordNotFound then render :file => "#{RAILS_ROOT}/public/404.html", :status => 404
    when ActionController::RoutingError, ActionController::UnknownController, ActionController::UnknownAction then render :file => "#{RAILS_ROOT}/public/422.html", :status => 422
    else render :file => "#{RAILS_ROOT}/public/404.html"
    end
  end

  private

  def per_page
    params[:per_page] ||=  25
  end

  def page
    params[:page] ||= 1
  end
end
