class QuestionsController < ApplicationController

  def index
    @questions = Question.order('updated_at ASC')
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
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

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    @question.update(question_params)
    redirect_to question_path
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    if @question.destroy
      flash[:notice] = "Your entry was deleted!"
      redirect_to '/questions'

    else
      flash.now[:notice] = "Your entry couldn't be deleted"
      render @question #_path
    end
  end

  private

  def question_params
    params.require(:question).permit(:title, :description)
  end

end
