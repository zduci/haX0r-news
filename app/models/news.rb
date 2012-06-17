class News < ActiveRecord::Base
  DEFAULT_ARTICLES_ON_PAGE = 20

  def self.page_exists(page, articles_on_page = DEFAULT_ARTICLES_ON_PAGE)
    News.count > create_offset(page, articles_on_page)
  end

  def self.create_article(author, title, content)
    News.create!(:author => author, :title => title, :content => content)
  end

  def self.get_page(page, articles_on_page = DEFAULT_ARTICLES_ON_PAGE)
    offset = create_offset(page, articles_on_page)
    News.order("created_at DESC").limit(articles_on_page).offset(offset)
  end

  private
  def self.create_offset(page, articles_on_page)
    (page.to_i - 1) * articles_on_page
  end
end
