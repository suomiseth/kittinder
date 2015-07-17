class StaticPagesController < ApplicationController
  def home
    @action = Action.new
    @cat = Cat.all.sample(1).first
    render 'home'
  end

end