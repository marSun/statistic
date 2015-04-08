class ClientsController < ApplicationController

  def get_clients
    agent_id = params[:id]
    clients = Client.where(agent_id: agent_id)
    render json: {result: clients.to_json}

  end

end
