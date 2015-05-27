# encoding: utf-8
class GoodsController < ApplicationController
  layout "home"

  def new

  end

  def create
    goods_name = params[:goods_name]
    Goods.create(name: goods_name)
    redirect_to "/goods/new"
  end

  def list
    @goodses = Goods.all.order("id DESC").paginate(per_page: 10, page: params[:page])
  end

end
