class MatchesController < ApplicationController
# before_action :set_user

  def create
    if params[:commit] == 'Yes'
      @match = Match.new
      @match.match_type = true
      @match.actor_id = session[:cat_id] 
      @match.receiver_id  = params[:receiver_id]
      @match.save
    elsif params[:commit] == 'No'
      @match = Match.new
      @match.match_type = false
      @match.actor_id = session[:cat_id] 
      @match.receiver_id = params[:receiver_id]
      @match.save
    end

    redirect_to root_path
  end

  def new
    @cat = Cat.all.sample(1).first
    @match = Match.new
  end


  private

  # def set_user
  #   @cat = Cat.find(params[:id])
  # end

  # def match_params
  #   params.require(:match).permit(:match_type, :actor_id, :receiver_id )
  # end
end
