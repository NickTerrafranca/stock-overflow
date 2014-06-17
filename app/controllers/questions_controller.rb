class QuestionsController < ApplicationController

  def index
    @questions = Question.order('updated_at ASC')
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to @question
    else
      flash.now[:notice] = "Something whent wrong, you posting could not be saved."
      render :new
    end
  end

  private

  def question_params
    params.require(:question).permit(:title, :description)
  end

end
