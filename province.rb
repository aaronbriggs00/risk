class Province
  attr_accessor :id, :owner, :army, :adjacent, :name
  def initialize(name, id, adjacent)
    @id = id
    @name = name
    @owner = nil
    @army = nil
    @adjacent = adjacent
  end
end