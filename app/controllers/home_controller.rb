class HomeController < ApplicationController
  def index
		@eras = Era.all
  end
end
