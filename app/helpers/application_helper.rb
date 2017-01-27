module ApplicationHelper

  def question_or_answer(params)
    if params[:answer_id]
      @answer = Answer.find(params[:answer_id])
    else
      @question = Question.find(params[:question_id])
    end
  end
  
end
