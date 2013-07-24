class Clubhouse < ActiveRecord::Migration
  def up
  	create_table :users do |t|
  		t.string :fname
  		t.string :lname
  		t.string :email
  		t.string :username
  		t.string :crew
  		#t.url :profilepicture
  	end
  end

  def down
  	drop_table :users
  end
end
