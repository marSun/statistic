class Goods < ActiveRecord::Base
  self.table_name = 'goodses'
  has_many :offers

end
