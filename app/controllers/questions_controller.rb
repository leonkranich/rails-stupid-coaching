class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach(@question)
  end

  def coach(my_input)
    if my_input == "i am going to work"
      return "Great!"
    elsif my_input.end_with?("?")
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end
