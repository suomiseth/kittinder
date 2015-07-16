class SessionsController < ApplicationController

  def create
    @cat = Cat.find_or_create_from_auth_hash(auth_hash)
    session[:cat_id] = @cat.id
    redirect_to root_path
  end

  def destroy
    session[:cat_id] = nil
    redirect_to root_path, notice: "signed out, sucka!"
  end

  protected
  def auth_hash
    request.env['omniauth.auth']
  end
end
