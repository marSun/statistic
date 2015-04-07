module Mock

  def self.mock_all
    MockAgent.mock
    MockClient.mock
    MockGoods.mock
    MockOffer.mock
  end

  def self.delete_all
    Agent.delete_all
    Client.delete_all
    Goods.delete_all
    Offer.delete_all
  end
end
