class QuestionsController < ApplicationController

  def index
    @questions = Question.order('updated_at ASC')
  end

  def show
    @question = Question.find(params[:id])
  end

end
