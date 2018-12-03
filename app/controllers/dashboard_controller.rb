class DashboardController < ApplicationController
  def index
    load_recent_heard
    load_recommendations
  end
  
  def load_recent_heard
    @recent_albums = current_user.recently_heards.order("created_at DESC").limit(4).map(&:album)
  end
end
