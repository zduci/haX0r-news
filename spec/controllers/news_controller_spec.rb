require 'spec_helper'

describe NewsController do
  it 'assigns the requested news page' do 
    news = stub
    page_number = '23'
    News.stub(:page_exists).with(page_number) { true }
    News.stub(:get_page).with(page_number) { [news] } 
    get :index, :page => page_number
    assigns(:news).should == [news]
  end

  it 'returns to the index if the requested page does not exist' do
    page_number = '23' 
    News.stub(:page_exists).with(page_number) { false }
    get :index, :page => page_number
    response.should redirect_to(:action => :index, :page => 1)
  end
end
