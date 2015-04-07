# == Schema Information
#
# Table name: agents
#
#  id   :integer          not null, primary key
#  name :string(255)
#  no   :string(255)
#

class Agent < ActiveRecord::Base
  has_many :clients
  has_many :offers

end
