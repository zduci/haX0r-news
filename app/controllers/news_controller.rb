class NewsController < ApplicationController
  def index
    @news = News.get_page(params[:page])
  end
end
