class AnswersController < ApplicationController

  def create
    @answer = Answer.new(answer_params)
    @question = Question.find(params[:question_id])
    @answer.question_id = @question.id
    if @answer.save
      redirect_to @question
    else
      flash.now[:notice] = "Something whent wrong, you posting could not be saved."
      render :new
    end
  end

  def answer_params
      params.require(:answer).permit(:answer_body)
  end
end
