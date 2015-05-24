class MockOrder
  
  def self.mock
    year = [2015, 2014, 2013, 2012].sample
    month = rand(12) + 1
    day = rand(27) + 1
    date = Date.new(year, month, day)
    Order.create(goods_id: 1,
                 port_id: 1,
                 transport_price: rand(10) + 5,
                 fob: rand(20) + 5,
                 cfr: rand(10) + 40,
                 created_at: date)


  end

end
