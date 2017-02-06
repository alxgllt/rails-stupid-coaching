class CoachingController < ApplicationController

  def answer
    @query = params[:query]
    @answer = coach_answer(@query)
  end

  def ask
  end

  private

  def coach_answer(question)
    if question == "I am going to work right now!"
      return ""
    elsif question.include?("?")
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end

end
