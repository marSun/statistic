class ClientsController < ApplicationController
  layout "home"

  def get_clients
    agent_id = params[:id]
    clients = Client.where(agent_id: agent_id)
    render json: {result: clients.to_json}

  end

  def list
    @clients = Client.includes(:agent).all.order("id DESC").paginate(per_page: 10, page: params[:page])
  end

  def new
    @agents = Agent.all

  end

  def create
    client_name = params[:client_name]
    agent_id = params[:agent_id]
    Client.create({name: client_name, agent_id: agent_id})
    redirect_to new_client_path
  end

end
