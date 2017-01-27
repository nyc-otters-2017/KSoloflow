class VotesController < ApplicationController

  def create
    question_or_answer(params)
    @result.vote.create(user_id: current_user.id)
  end

  def destroy
    @result.vote.
  end

  private

  def vote_params
    params.require(:vote).permit()
  end

end
