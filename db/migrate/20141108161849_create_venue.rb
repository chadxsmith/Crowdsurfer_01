class CreateVenue < ActiveRecord::Migration
  def change
    create_table :venues do |t|
    	t.string :venue_name, :null => false
    	t.string :address
    	t.string :city
    	t.string :country_code, :limit => 3
    	t.integer :postal_code
    	t.string :state_code
    end
  end
end
