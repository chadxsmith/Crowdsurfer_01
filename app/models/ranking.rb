class Ranking < ActiveRecord::Base
	# Expected Output is float number 
	def count_threshold_define(venue_id)
		count = VenueRanking.find(venue_id).count
		count_threshold_value = (1/count).to_f
	end

	def rating_threshold_define(venue_id)

	end

end
