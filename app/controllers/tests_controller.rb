# frozen_string_literal: true

class TestsController < ApplicationController
  def index
    @tests = Test.all
  end

  def take
    @test = Test.find(params[:test_id])
    @questions = @test.questions.reject do |question|
      Input.find_by(user: current_user, test_question: TestQuestion.find_by(question: question, test: @test))
    end # pas encore répondu
    @input = Input.new
  end

  def result
    @candidate = User.find(params[:user_id])
    @test = Test.find(params[:test_id])
    @candidate_results_for_test = @candidate.result_for_test(@test)
    @candidate_completion_for_test = @candidate.completion_for_test(@test)
    @candidate_results_per_tag = @candidate.results_per_tag(@test)
    @test_mean_results = @test.mean_results
    @labels = @test_mean_results.keys
    @candidate_values = @candidate_results_per_tag.values
    @mean_values = @test_mean_results.values
  end

  def show
    @test = Test.find(params[:id])
    @questions = @test.questions
    @candidates = @test.candidates
    if params[:query].present?
      sql_query = " \
        users.email ILIKE :query \
        OR users.last_name ILIKE :query \
        OR users.first_name ILIKE :query \
        OR users.full_name ILIKE :query \

      "
      @candidates = @test.candidates.where(sql_query, query: "%#{params[:query]}%")
    else
      @candidates = @test.candidates
    end
  end

  def new
    @test = Test.new
  end

  def create
    @test = Test.new(test_params)
    @test.tag_list = params[:test][:tag_list].keys
    @test.user = current_user
    if @test.save
      redirect_to test_path(@test), notice: 'Your test has been successfully generated!'
    else
      render :new
    end
  end

  private

  def test_params
    params.require(:test).permit(:name, :jobtype, :company_name, tag_list: [])
  end
end
