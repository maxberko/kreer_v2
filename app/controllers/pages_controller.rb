class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :contact]

  def home
  end

  def dashboard
    @tests = current_user.tests
  end

  def contact
  end
end
