class StatisticsController < ApplicationController

  def index
    @o1 = Offer.where(agent_id: 17, client_id: 107).where("date >= :start AND date <= :end", {start: Date.new(2012,1,1), end: Date.new(2013,1,1)})

    @o2 = Offer.where(agent_id: 17, client_id: 107).where("date >= :start AND date <= :end", {start: Date.new(2013,1,1), end: Date.new(2014,1,1)})
  end

end
