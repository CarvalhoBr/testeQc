class QuestionsController < ApplicationController
  
  def index
    @questions = Question.all

    render json: @questions
  end

  def most_accessed
    
    @questions = Question.most_accessed(params[:period])

    render json: @questions

  end


end
