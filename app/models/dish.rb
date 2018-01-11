class Dish < ApplicationRecord
  # Direct associations

  belongs_to :cuisine

  has_many   :bookmarks,
             :dependent => :destroy

  # Indirect associations

  has_one    :user,
             :through => :bookmarks,
             :source => :user

  # Validations

end
