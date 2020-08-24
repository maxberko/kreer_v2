# frozen_string_literal: true

class TestsController < ApplicationController
  def index
    @tests = Test.all
  end

  def take
    @test = Test.find(params[:test_id])
    @questions = @test.questions
  end

  def show
    @test = Test.find(params[:id])
    @questions = @test.questions
    @candidates = @test.candidates
    if params[:query].present?
      sql_query =  " \
        users.email ILIKE :query \
        OR users.last_name ILIKE :query \
        OR users.first_name ILIKE :query \
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
    @test.user = current_user
    if @test.save
      redirect_to test_path(@test)
    else
      render :new
    end
  end

  private

  def test_params
    params.require(:test).permit(:name, :jobtype, tag_list: [])
  end
end
