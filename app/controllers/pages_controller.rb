class PagesController < ActionController::Base
  def index
    render render: 'pages/index'
  end
end
