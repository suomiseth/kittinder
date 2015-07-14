class StaticPagesController < ApplicationController
  def home
    @cat = Cat.all.sample(1).first
    render 'home'
  end
end