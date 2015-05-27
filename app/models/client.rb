# encoding: utf-8
# == Schema Information
#
# Table name: clients
#
#  id       :integer          not null, primary key
#  agent_id :integer
#  name     :string(255)
#

class Client < ActiveRecord::Base
  belongs_to :agent
  has_many :offers

end
