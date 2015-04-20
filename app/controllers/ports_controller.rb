class PortsController < ApplicationController
  layout "home"

  def new

  end

  def create
    port_name = params[:ports_name]
    Port.create(name: port_name)

    redirect_to "/ports/new"
  end

  def list
    @ports = Port.all.order("id DESC").paginate(per_page: 10, page: params[:page])
  end

end
