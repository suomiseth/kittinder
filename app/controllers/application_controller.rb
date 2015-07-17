class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  private
  
  def current_cat
    @current_cat ||= Cat.find(session[:cat_id]) if session[:cat_id]
  end

  helper_method :current_cat
end
