# encoding: utf-8
# == Schema Information
#
# Table name: transport_offers
#
#  id               :integer          not null, primary key
#  company_id       :integer
#  port_id          :integer
#  goods_id         :integer
#  cabinet          :string(255)
#  price            :float(24)
#  deliver_goods_at :datetime
#  created_at       :datetime
#  updated_at       :datetime
#

class TransportOffer < ActiveRecord::Base
  belongs_to :company, class_name: "TransportCompany"
  belongs_to :goods, class_name: "Goods"
  belongs_to :port
end
