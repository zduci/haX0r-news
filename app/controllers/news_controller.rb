class NewsController < ApplicationController
  def index
    if News.page_exists(params[:page])
      @news = News.get_page(params[:page])
    else
      redirect_to :action => :index, :page => 1
    end
  end
end
