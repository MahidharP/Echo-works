class DashboardController < ApplicationController

  def index

    @colleges = College.all
    @students = Student.all
    @workshops = Workshop.all


  end



end
