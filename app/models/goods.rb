# == Schema Information
#
# Table name: goodses
#
#  id   :integer          not null, primary key
#  name :string(255)
#

class Goods < ActiveRecord::Base
  self.table_name = 'goodses'
  has_many :offers
  validates :name, presence: true

end
