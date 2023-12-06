class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params.dig(:question)

    if @question[-1] == "?"
      @answer = "Silly question, get dress and go to work"
    elsif @question == "I am going to work"
      @answer = "Great!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
