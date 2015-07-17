class StaticPagesController < ApplicationController
  def home
    @cat = Cat.all.sample(1).first
    @match = Match.new
  end
end