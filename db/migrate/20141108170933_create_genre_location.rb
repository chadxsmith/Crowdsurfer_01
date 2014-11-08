class CreateGenreLocation < ActiveRecord::Migration
  def change
    create_table :genre_locations do |t|
    	t.integer :location_id, :null => false
    	t.integer :sub_genre_id, :null => false
    end
  end
end
