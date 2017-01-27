class CommentsController < ApplicationController

  def create
    question_or_answer(params)
    @comment = @result.comments.new(comment_params)
    @comment.user_id = current_user.id

    if @comment.save
      redirect_to @result
    else
      render 'question#show'
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])

    if @comment.update(comment_params)
      redirect_to question_path(@comment.question.id)
    else
      render 'edit'
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to root_path
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

end
