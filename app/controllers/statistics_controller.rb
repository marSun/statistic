class StatisticsController < ApplicationController
  layout "home"

  def index
    @agents = Agent.all
    @clients = Client.all
    @goodses = Goods.all
    @ports = Port.all

    agent_id = params[:agent_id]
    client_id = params[:client_id]
    goods_id = params[:goods_id]
    port_id = params[:port_id]

    @agent = Agent.find(agent_id) rescue nil
    @client = Client.find(client_id) rescue nil
    @goods = Goods.find(goods_id) rescue nil
    @port = Port.find(port_id) rescue nil

    @o1 = Offer.where(agent_id: agent_id, client_id: client_id, goods_id: goods_id, port_id: port_id).where("date >= :start AND date <= :end", {start: Date.new(2012,1,1), end: Date.new(2013,1,1)})

    @o2 = Offer.where(agent_id: agent_id, client_id: client_id, goods_id: goods_id, port_id: port_id).where("date >= :start AND date <= :end", {start: Date.new(2013,1,1), end: Date.new(2014,1,1)})
  end

end
