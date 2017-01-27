class AnswerController < ApplicationController

  def create
    user_sign_in?
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new(answer_params)
    @answer.user_id = current_user.id

    if @answer.save
      redirect_to @question
    else
      render 'questions#show'
    end
  end

  def edit
    @answer = Answer.find(params[:id])
    @user = @answer.user
  ends

  def update
    @answer = Answer.find(params[:id])
    @user = @answer.user

    if @answer.update(answer_params)
      redirect_to @answer.question
    else
      render 'questions#show'
    end
  end

  def destroy
  @answer = Answer.find(params[:id])
   @user = @answer.user
   @answer.destroy

   redirect_to root_path
  end

  private

  def answer_params
  end

end
