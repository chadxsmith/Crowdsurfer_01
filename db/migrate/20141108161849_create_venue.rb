class CreateVenue < ActiveRecord::Migration
  def change
    create_table :venues do |t|
    	t.string :venue_name, :null => false
    	t.integer :location_id, :null => false
    end
  end
end
