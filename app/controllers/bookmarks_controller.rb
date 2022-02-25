class BookmarksController < ApplicationController

  def new
    @bookmark = Bookmark.new(bookmark.params)
    @list = List.create(bookmark: @bookmark)
  end
end
