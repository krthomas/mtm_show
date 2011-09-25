class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def about
    @title = "About"
  end

  def addepisode
    @title = "Add Episode"
  end

  def addreview
    @title = "Add Review"
  end

end
