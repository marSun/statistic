# encoding: utf-8
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
    
    deliver_at = params[:deliver_at]
    cabinet = params[:cabinet]
    goods_id = params[:goods_id]
    port_id = params[:port_id]

    @deliver_at = deliver_at rescue nil
    @cabinet = Cabinet.find_by_id(cabinet) rescue nil
    @goods = Goods.find(goods_id) rescue nil
    @port = Port.find(port_id) rescue nil


    @trans_offers = TransportOffer.includes(:company).where(deliver_goods_at: deliver_at, cabinet: cabinet, goods_id: goods_id, port_id: port_id).order("price DESC")
    @array = []
    @trans_offers.each {|o| @array << {"name" => o.company.name, "data" => [o.price] }}
  end



end
