class DashboardController < ApplicationController

  def index

    @colleges = College.all


  end



end
