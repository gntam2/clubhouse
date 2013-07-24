class Createpost < ActiveRecord::Migration
  def up
  	create_table :post do |t|
  		t.text :text
  		t.integer :user_id
  		t.datetime :created_at
  		#t.url :picture_up
  	end
  end

  def down
  	drop_table :post
  end
end
