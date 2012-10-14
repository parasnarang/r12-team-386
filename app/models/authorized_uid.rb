class AuthorizedUid < ActiveRecord::Base
  attr_accessible :uid
  has_and_belongs_to_many :boards
end
