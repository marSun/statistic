class Cabinet
  attr_accessor :id, :name
  
  ALL = []
  def initialize(id, name)
    @id = id
    @name = name
  end

  def self.all
    return ALL unless ALL.blank?

    ALL << new("small", "小柜")
    ALL << new("big", "大柜")
    return ALL
  end

  def self.find_by_id(id)
    all.select{|e| e.id == id}.try(:first)
  end

end
