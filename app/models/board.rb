# == Schema Information
#
# Table name: boards
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  slug       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Board < ActiveRecord::Base
  attr_accessible :name, :slug

  belongs_to :user 
  has_many :items
end
