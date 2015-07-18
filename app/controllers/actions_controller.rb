class ActionsController < ApplicationController
  # before_action :cat_params
  def create
    @action = Action.new(cat_params)
    if params[:commit] == 'Yes'
      
#actor_id, receiver_id, action_type 
      #take params[:id] and set it in action model. make method in model?
    elsif params[:commit] == 'No'
      #do something
    end 
  end


private
  def cat_params
    # params.require(:action).permit(:action_type, :receiver_id, :actor_id)
  end

end
