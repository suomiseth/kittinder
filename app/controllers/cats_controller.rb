class CatsController < ApplicationController

before_action :set_cat, only: [:show, :edit, :update, :destroy]

  def index
    @cats = Cat.all
  end

  def show
    @cats = Cat.all
    @match = Match.all
  end

  private
    def set_cat
      @cat = Cat.find(params[:id])
    end
end