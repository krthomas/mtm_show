require 'spec_helper'

describe Episode do

  before(:each) do
    @attr = { :season => "0", :episode_number => "0", :title => "xxTITLExx" }
  end

  it "should create a new instance given valid attributes" do
    Episode.create!(@attr)
  end

  it "should require a season" do
    no_season_episode = Episode.new(@attr.merge(:season => ""))
    no_season_episode.should_not be_valid
  end

  it "should require an episode number" do
    no_episodenumber_episode = Episode.new(@attr.merge(:episode_number => ""))
    no_episodenumber_episode.should_not be_valid
  end

  it "should require a title" do
    no_title_episode = Episode.new(@attr.merge(:title => ""))
    no_title_episode.should_not be_valid
  end

  describe "review associations" do

    before(:each) do
      @episode = Episode.create(@attr)
    end

    it "should have a review attribute" do
      @episode.should respond_to(:reviews)
    end
  end

end