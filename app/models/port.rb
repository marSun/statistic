# == Schema Information
#
# Table name: ports
#
#  id   :integer          not null, primary key
#  name :string(255)
#

class Port < ActiveRecord::Base
  has_many :offers
  validates :name, presence: true

end
