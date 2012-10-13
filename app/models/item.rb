class Item < ActiveRecord::Base
  attr_accessible :image_url, :name, :price, :url, :votes
end
