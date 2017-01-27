class VotesController < ApplicationController

  def create
    question_or_answer(params)
    @vote = @result.vote.new(user_id: current_user.id, type: vote_params)

    if @vote.save
      redirect_to @result
    else
      render 'question#show'
    end
  end

  private

  def vote_params
    params.require(:vote).permit(:type)
  end

end
