class HomeController < ApplicationController
  def index
    @total = Visitor.all.count
  end

  def not_found
    flash[:alert] = "The link your looking for doesn't exist!"
    redirect_to :root
  end
end
