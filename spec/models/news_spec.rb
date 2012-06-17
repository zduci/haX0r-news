require 'spec_helper'
describe News do
  it 'retrieves the articles for the requested page' do
    articles_on_page = 1
    first_article = News.create_article("Anonymous", "First article", "This should be on page 2")
    second_article = News.create_article("Anonymous", "Second article", "This should be on page 1")
    first_page = News.get_page(1, articles_on_page)
    second_page = News.get_page(2, articles_on_page)
    first_page.should == [second_article]
    second_page.should == [first_article]
  end
end
