class ShowsController < ActionController::Base
  def show
    @question = params[:question]
    @show = params[:show]
  end
end
