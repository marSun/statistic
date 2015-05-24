class OrderService
  YEARS = %w(2015 2014 2013 2012)

  def cfr_statistic_data(goods_id, port_id)
    items = []
    OrderService::YEARS.each do |year|
      items << {
        year: year, 
        data: Order.select("id, cfr, created_at").where(goods_id: goods_id, port_id: port_id).where("created_at >= :start AND created_at <= :end", {start: Date.new(year.to_i,1,1), end: Date.new(year.to_i + 1,1,1)})
      }
    end
    items

  end

  def trans_percent_data(goods_id, port_id)
    items = []
    OrderService::YEARS.each do |year|
      items << {
        year: year, 
        data: Order.select("id, transport_price, cfr").where(goods_id: goods_id, port_id: port_id).where("created_at >= :start AND created_at <= :end", {start: Date.new(year.to_i,1,1), end: Date.new(year.to_i + 1,1,1)})
      }
    end
    items.reject!{|i| i == []}

    items

  end

  def fob_percent_data(goods_id, port_id)
    items = []
    OrderService::YEARS.each do |year|
      items << {
        year: year, 
        data: Order.select("id, fob, cfr").where(goods_id: goods_id, port_id: port_id).where("created_at >= :start AND created_at <= :end", {start: Date.new(year.to_i,1,1), end: Date.new(year.to_i + 1,1,1)})
      }
    end
    items.reject!{|i| i == []}

    items
  end

end
