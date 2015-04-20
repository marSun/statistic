class Port < ActiveRecord::Base
  has_many :offers
  validates :name, presence: true

end
