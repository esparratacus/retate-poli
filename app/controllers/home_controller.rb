class HomeController < ApplicationController
  def index
    @open_challenges = ChallengeInstance.includes(:challenge).where(is_public:true,is_active:true)
    render 'home/index'
  end
end
