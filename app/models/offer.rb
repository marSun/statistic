# == Schema Information
#
# Table name: offers
#
#  id         :integer          not null, primary key
#  agent_id   :integer
#  client_id  :integer
#  goods_id   :integer
#  price      :float(24)
#  port       :string(255)
#  date       :datetime
#  created_at :datetime
#  updated_at :datetime
#

class Offer < ActiveRecord::Base

  belongs_to :agent


end