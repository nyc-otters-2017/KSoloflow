class QuestionController < ApplicationController
  # before_action :authenticate_user!

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    @question.user_id = current_user.id

    if @question.save
      redirect_to @question
    else
      render 'new'
    end
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
    @comment = Comment.new
  end

  def edit
    @question = Question.find(params[:id])
    @user = @question.user
  end

  def update
    @question = Question.find(params[:id])
    @user = @question.user

    if @question.update(question_params)
      redirect_to @question
    else
      render 'edit'
    end
  end

  def destroy
    @question = Question.find(params[:id])
      @user = @question.user
        @question.destroy

      redirect_to root_path
    end

  private

  def question_params
  end

end
