# encoding: utf-8
# == Schema Information
#
# Table name: orders
#
#  id              :integer          not null, primary key
#  fob             :float(24)
#  cfr             :float(24)
#  transport_price :float(24)
#  port_id         :integer
#  goods_id        :integer
#  created_at      :datetime
#  updated_at      :datetime
#

class Order < ActiveRecord::Base
  has_one :port
  has_one :goods, class_name: "Goods"

  def trans_percent
    ((transport_price / cfr) * 100).round
  end

  def fob_percent
    ((fob / cfr) * 100).round
  end
end
