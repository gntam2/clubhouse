class User < ActiveRecord::Base

  def full_name
    fname + " " + lname
  end

  def location
    text + ", " + username + ", " + created_at
  end

  has_many :post
end

class Post < ActiveRecord::Base

  belongs_to :user
end