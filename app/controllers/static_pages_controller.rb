class StaticPagesController < ApplicationController

  before_action :logged_in_user, only: [:smart, :feed]

  def home

  end

  def help
  end

  def about
  end

  def contact
  end

  def smart
  end

  def feed
    @micropost = current_user.microposts.build
    @feed_items = current_user.feed.paginate(page: params[:page])

  end
end
