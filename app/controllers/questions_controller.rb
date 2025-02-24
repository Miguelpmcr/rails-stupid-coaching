class QuestionsController < ApplicationController

  def ask
  end

  # def contact
  #   @questions = ["I am going to work", "I am going to work?"]
  #   @answers = ["Great", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]

  #   if params[:question]
  #     @answers = @answers.select { |answer| answer.start_with?(params[:answer]) }
  #   end
  # end

  def answer
    @question = params[:question]
    @answer = coach_response(@question) if @question
  end

  private

  def coach_response(question)
    if question == "I am going to work"
      "Great!"
    elsif question.ends_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
