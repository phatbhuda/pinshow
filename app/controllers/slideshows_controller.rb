class SlideshowsController < ApplicationController
  require 'rss'
  require 'open-uri'

  def show
    @board = Board.find(params[:id])
    url = @board.url
    URI.open(url) do |rss|
      @feed = RSS::Parser.parse(rss)
    end
  end
end
