require 'spec_helper'

describe Review do

  before(:each) do
    @attr = { :content => "value for content" }
  end

=begin
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
=end
end