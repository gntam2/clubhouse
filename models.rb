class User < ActiveRecord::Base

  def full_name
    fname + " " + lname
  end

  def location
    city + ", " + state
  end

  has_many :post
end

class Post < ActiveRecord::Base

  belongs_to :user
end