class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
  end

  def search
    genre = params[:genre]
    loc = "20005"
    parameters = { limit: 10, term: genre}
    render json: Yelp.client.search(loc, parameters)
  end
end
