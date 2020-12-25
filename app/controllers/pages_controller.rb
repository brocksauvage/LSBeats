class PagesController < ApplicationController
  def landing
    @tracks = Track.all
    @trackUrls = @tracks.collect(&:url)
    @coverImageUrls = @tracks.collect(&:cover_image_url)
  end

  def about
  end

  def tracks
    @tracks = Track.all
  end

  def contact
  end

end
