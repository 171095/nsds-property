class HomeController < ApplicationController
  def index
    @q = City.ransack(params[:q])
    @cities = @q.result(distinct: true)   
  end
end
