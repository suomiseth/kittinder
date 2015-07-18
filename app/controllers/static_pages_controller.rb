class StaticPagesController < ApplicationController
  def home
    binding.pry
    @cat = Cat.all.sample(1).first
    @match = Match.new
  end
end