class InputsController < ApplicationController
  def create
    @input = Input.new
    @input.user = current_user
    answer_id = params[:answer] && params[:answer].keys.first
    if answer_id
      unless Input.find_by(user: current_user, test_question: TestQuestion.find(params[:id]))
        @answer = Answer.find(answer_id)
        @input.answer = @answer
        @input.test_question = TestQuestion.find(params[:id])
        @input.save
      end
    end
  end

end
