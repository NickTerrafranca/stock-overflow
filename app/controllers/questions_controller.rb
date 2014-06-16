class QuestionsController < ApplicationController

  def index
    @questions = Question.order('updated_at ASC')
  end

end
