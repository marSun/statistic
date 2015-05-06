# == Schema Information
#
# Table name: offers
#
#  id         :integer          not null, primary key
#  agent_id   :integer
#  client_id  :integer
#  goods_id   :integer
#  price      :float(24)
#  date       :datetime
#  created_at :datetime
#  updated_at :datetime
#  port_id    :integer
#

class Offer < ActiveRecord::Base

  belongs_to :agent
  belongs_to :client
  belongs_to :goods, class_name: "Goods"
  belongs_to :port


end
