class OwnersController < ApplicationController

  before_action :set_owner, only: [:show, :edit, :update, :destroy]

  def index
    @owners = Owner.all
  end

  def show
    @owners = Owner.all
  end




  private
  def set_owner
    @owner = Owner.find(params[:id])
  end
end