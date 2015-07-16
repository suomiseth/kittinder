class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # @import url(http://fonts.googleapis.com/css?family=Varela+Round);
  private
  
  def current_cat
    @current_cat ||= Cat.find(session[:cat_id]) if session[:cat_id]
  end

  helper_method :current_cat
end
