class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.create(list_params)
  end

  def destroy
    @bookmark = Bookmark.find(params[:id]).destroy
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end
end
