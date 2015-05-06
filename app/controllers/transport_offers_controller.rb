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



end
