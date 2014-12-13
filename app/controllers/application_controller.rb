class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @genres = Genre.all
  end

  def search
    genre = params[:genre]
    location_array = []
    Location.all.each do |loc|
      location_array.push "#{loc.city}"
    end
    location = location_array.join(" ")
    parameters = { limit: 10, term: genre, category_filter: "danceclubs"} 
    render json: Yelp.client.search(location, parameters)
  end

  def get_threshold_value(venue_id)
    Ranking.count_threshold_define(venue_id)
  end
end


