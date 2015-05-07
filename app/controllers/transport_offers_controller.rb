class TransportOffersController < ApplicationController
  layout "home"

  def new
    @ports = Port.all
    @goodses = Goods.all
    @trans_companies = TransportCompany.all

  end

  def create
    offer = {
      company_id: params[:company_id],
      goods_id: params[:goods_id],
      cabinet: params[:cabinet],
      deliver_goods_at: params[:deliver_goods_at],
      port_id: params[:port_id],
      price: params[:price]
    }
    TransportOffer.create(offer)
    redirect_to new_transport_offer_path

  end

  def statistic
    @companies = TransportCompany.all
    @goodses = Goods.all
    @ports = Port.all
    @cabinets = Cabinet.all
    
    company_id = params[:company_id]
#    client_id = params[:client_id]
    #goods_id = params[:goods_id]
    #port_id = params[:port_id]

    #@agent = Agent.find(agent_id) rescue nil
    #@client = Client.find(client_id) rescue nil
    #@goods = Goods.find(goods_id) rescue nil
   # @port = Port.find(port_id) rescue nil
  end



end
