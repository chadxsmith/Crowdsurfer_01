class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @genres = Genre.all
  end

  def search
    genre = params[:genre]
    loc = "20005"
    parameters = { limit: 10, term: genre}
    object = Yelp.client.search(loc, parameters)
    
    # object.businesses.each do |venue|
    #   review_count = venue.review_count

    #   Venue.create(name: venue_name, location: venue_location)
    # end
    render json: object
  end

  def get_threshold_value(venue_id)
    Ranking.count_threshold_define(venue_id)
  end
end


