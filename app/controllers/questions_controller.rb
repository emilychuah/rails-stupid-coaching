class QuestionsController < ApplicationController
  def ask; end

  def answer
    if params[:question].include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    elsif params[:question] == 'I am going to work right now!'
      @answer = 'Great!'
    elsif params[:question].is_a? String
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
