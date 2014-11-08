class CreateLocation < ActiveRecord::Migration
  def change
    create_table :locations do |t|
    	t.string :city, :null => false
    	t.string :state, :null => false, :limit => 2
    	t.integer :zip_code
    end
  end
end
