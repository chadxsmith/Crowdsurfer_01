class CreateVenueRanking < ActiveRecord::Migration
  def change
    create_table :venue_rankings do |t|
    	t.integer :venue_id
    	t.integer :location_id
    	t.float :rating
    	t.integer :count
    end
  end
end
