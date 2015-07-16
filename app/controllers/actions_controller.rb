class ActionsController < ApplicationController
    def create
    if params[:commit] == 'Yes'
      raise 'Yay'
      #take params[:id] and set it in action model. make method in model?
    elsif params[:commit] == 'No'
      #do something
    end 
  end
end
