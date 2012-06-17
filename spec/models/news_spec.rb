require 'spec_helper'
describe News do
  let(:articles_on_page) { 1 }
    
  it 'retrieves the articles for the requested page' do
    first_article = News.create_article("Anonymous", "First article", "This should be on page 2")
    second_article = News.create_article("Anonymous", "Second article", "This should be on page 1")
    first_page = News.get_page(1, articles_on_page)
    second_page = News.get_page(2, articles_on_page)
    first_page.should == [second_article]
    second_page.should == [first_article]
  end

  it 'checks if a page exists' do
    first_article = News.create_article("Anonymous", "single", "Forever alone")
    News.page_exists(1, 1).should == true
    News.page_exists(2, 1).should == false
  end
end
