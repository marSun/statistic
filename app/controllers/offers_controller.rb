# encoding: utf-8
class OffersController < ApplicationController
  before_action :authenticate_user!
  layout "home"

  def new
    @goodses = Goods.all
    @ports = Port.all
    @agent = Agent.find(current_user.agent_id)

  end

  def create
    
    agent_id  = params[:agent_id]
    client_id = params[:client_id]
    goods_id  = params[:goods_id]
    port_id   = params[:port_id]
    price     = params[:offer_price]
    Offer.create({agent_id: agent_id, 
                  client_id: client_id, 
                  goods_id: goods_id, 
                  port_id: port_id, 
                  price: price})
    redirect_to new_offer_path
  end

  def edit
    offer_id = params[:id]
    @offer = Offer.find(offer_id)
    @goodses = Goods.all
    @ports = Port.all
    @agent = Agent.find(current_user.agent_id)
  end

  def update
    agent_id  = params[:agent_id]
    client_id = params[:client_id]
    goods_id  = params[:goods_id]
    port_id   = params[:port_id]
    price     = params[:offer_price]
  end

  def list
    @offers = Offer.includes(:agent, :client, :goods, :port).all.order("updated_at DESC").paginate(per_page: 10, page: params[:page])
  end

end
