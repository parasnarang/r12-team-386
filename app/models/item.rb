# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  name        :string(255)      not null
#  price       :string(255)      not null
#  image_url   :string(255)
#  product_url :string(255)
#  votes       :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  board_id    :integer
#

class Item < ActiveRecord::Base
  attr_accessible :image_url, :name, :price, :url, :votes
  belongs_to :board
  belongs_to :user
end
