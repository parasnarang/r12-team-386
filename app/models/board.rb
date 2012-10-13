class Board < ActiveRecord::Base
  attr_accessible :name, :slug

  belongs_to :user 
  has_many :items
end
