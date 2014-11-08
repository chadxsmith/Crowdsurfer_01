class CreateSubGenre < ActiveRecord::Migration
  def change
    create_table :sub_genres do |t|
    	t.string :sub_genre_names
    	t.integer :genre_id
    end
  end
end
