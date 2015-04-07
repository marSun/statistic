class MockClient

  def self.mock
    agents = Agent.all
    al = ('A'..'Z').to_a
    al.each do |a|
      Client.create({name: 'client' + a, agent_id: agents.sample.id})
    end

  end

end
