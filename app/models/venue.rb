class Venue < ApplicationRecord
  # Direct associations

  belongs_to :neighborhood,
             :required => false

  has_many   :bookmarks,
             :dependent => :destroy

  # Indirect associations

  has_many   :dishes,
             :through => :bookmarks,
             :source => :dish

  # Validations

end
