class MockOffer

  def self.mock
    agents = Agent.all
    ports  = %w{port1 port2 port3 port4}

    year   = (2012..2014).to_a
    month  = 1
    day    = (1..28).to_a

    agents.each do |agent|
      agent.clients.each do |client|
        date = Date.new(2012, 1, day.sample)
        while year.include?(date.year)
          Offer.create({agent_id: agent.id,
                        client_id: client.id,
                        goods_id: Goods.all.sample.id,
                        price: rand(100),
                        port: ports.sample,
                        date: date
                      })
          date = date.next_month
        end
      end

    end


  end
end
