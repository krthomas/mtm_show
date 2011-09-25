require 'spec_helper'

describe "LayoutLinks" do

  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Home")
  end

  it "should have an About page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "About")
  end

  it "should have a add episode page at '/addepisode'" do
    get '/addepisode'
    response.should have_selector('title', :content => "Add Episode")
  end

  it "should have a add review page at '/addreview'" do
    get '/addreview'
    response.should have_selector('title', :content => "Add Review")
  end

end