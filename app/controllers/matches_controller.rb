class MatchesController < ApplicationController
  def create
    binding.pry
    redirect_to home_path
  end

  def new
    @cat = Cat.all.sample(1).first
    @match = Match.new
  end




  private

  def post_params
    params.require(:match).permit(:match_type, :actor_id, :receiver_id)
  end
end
