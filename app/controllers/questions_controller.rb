class QuestionsController < ApplicationController
  # before_action :authenticate_user!

  def index
    questions = Question.all
    render json: questions
  end

  def new
    question = Question.new
    render json: question
  end

  def create
    question = Question.new(question_params)
    question.user_id = current_user.id

    if question.save
      render json: question
    else
      render nothing: true, status: 404
    end
  end

  def show
    question = Question.find(params[:id])
    answer = Answer.new
    comment = Comment.new
    render json: question
  end

  def edit
    question = Question.find(params[:id])
    user = question.user
    render json: question
  end

  def update
    question = Question.find(params[:id])
    user = question.user

    if question.update(question_params)
      render json: question
    else
      render json: question
    end
  end

  def destroy
    question = Question.find(params[:id])
    user = question.user
    question.destroy

    redirect_to root_path
  end

  private

  def question_params
  end

end
