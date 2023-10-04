class QuestionsController < ActionController::Base
  skip_before_action :verify_authenticity_token, only: [:show]

  def ask
  end

  def show
    question = params[:question].capitalize
    user_name = extract_name(question)
    @answer = compute_answer(question, user_name)

    render 'shows/show', locals: { question: question, answer: @answer }
  end

  private

  def compute_answer(question, user_name)
    if question == 'I am going to work'
      'Great!'
    elsif question.include? '?'
      "Silly question, get dressed and go to work!"
    elsif question == ''
      'Please ask a question!!'
    elsif user_name
      "I don't care #{user_name.capitalize}, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def extract_name(question)
    if question.downcase.include?("my name is")
      name = question.downcase.split("my name is").last.strip
      return name unless name.empty?
    end
  end
end
