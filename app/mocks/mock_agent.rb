class MockAgent

  def self.mock
    names = %w{agent1 agent2 agent3 agent4}
    names.each do |n|
      Agent.create({name:name, no: rand(1000)})
    end

  end

end
