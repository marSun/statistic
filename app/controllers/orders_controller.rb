class OrdersController < ApplicationController
  layout "home"

  def new
    @ports = Port.all
    @goodses = Goods.all

  end

  def create
    goods_id = params[:goods_id]
    port_id  = params[:port_id]
    trans_price = params[:trans_price]
    fob_price = params[:fob_price]
    cfr_price = params[:cfr_price]

    Order.create(goods_id: goods_id,
                 port_id: port_id,
                 transport_price: trans_price,
                 fob: fob_price,
                 cfr: cfr_price
                )


    redirect_to "/orders/new"
  end

  def cfr_statistic
    @ports = Port.all
    @goodses = Goods.all

    goods_id = params[:goods_id]
    port_id = params[:port_id]
    items = ::OrderService.new.cfr_statistic_data(goods_id, port_id)
    items.reject!{|i| i == []}
    @array = []
    @x = []
    items.each do |item|
      @x << item[:data].map(&:created_at)
      @array << {
        "name" => item[:year].to_s,
        "data" => item[:data].map(&:cfr)
      }
    end
    
  end

  def trans_percent_statistic
    @ports = Port.all
    @goodses = Goods.all

    goods_id = params[:goods_id]
    port_id = params[:port_id]
    items = ::OrderService.new.trans_percent_data(goods_id, port_id)

    @array = []
    items.each do |item|
      @array << {
        "name" => item[:year].to_s,
        "data" => item[:data].map do |i|
          i.trans_percent
        end
      }
    end
    


  end

  def fob_percent_statistic
    @ports = Port.all
    @goodses = Goods.all

    goods_id = params[:goods_id]
    port_id = params[:port_id]
    items = ::OrderService.new.fob_percent_data(goods_id, port_id)

    @array = []
    items.each do |item|
      @array << {
        "name" => item[:year].to_s,
        "data" => item[:data].map do |i|
          i.fob_percent
        end
      }
    end
  end

end
