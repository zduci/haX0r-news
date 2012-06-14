require 'spec_helper'

describe NewsController do
  it 'assigns the requested news page' do 
    news = stub
    page_number = '23'
    News.stub(:get_page).with(page_number) { [news] } 
    get :index, :page => page_number
    assigns(:news).should == [news]
  end
end
