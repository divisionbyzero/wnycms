class DashboardController < ApplicationController

  def index
    @pages = Page.alphebetized
  end

end
