class SiteController < ApplicationController
  def index
    @bookmarks = Bookmark.order('created_at desc') if current_user
  end
end
