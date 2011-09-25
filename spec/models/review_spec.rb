require 'spec_helper'

describe Episode do

  before(:each) do
    @episode = Factory(:episode)
    @attr = { :content => "value for content" }
  end

  it "should create a new instance given valid attributes" do
    @episode.reviews.create!(@attr)
  end

  describe "episode associations" do

    before(:each) do
      @review = @episode.reviews.create(@attr)
    end

    it "should have a episode attribute" do
      @review.should respond_to(:episode)
    end

    it "should have the right associated episode" do
      @review.episode_id.should == @episode.id
      @review.episode.should == @episode
    end
  end
end