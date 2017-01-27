module ApplicationHelper

  def question_or_answer(params)
    if params[:answer_id]
      @result = Answer.find(params[:answer_id])
    else
      @result = Question.find(params[:question_id])
    end
  end

end
