class QuestionsController < ApplicationController
  def personal_coach(text)
    if text.start_with?("I am going to work right now!")
      "That's good to hear! Now go out there and make it happen!"
    else
      "Get dressed and go to work!"
    end
  end

  def answer
    @question = params[:question]
    @answer = personal_coach(@question)
    render :answer
  end

  def ask
    render :ask
  end
end
