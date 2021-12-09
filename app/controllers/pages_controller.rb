class PagesController < ActionController::Base
  def index
    redirect_to '/api-docs'
  end
end
