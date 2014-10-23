class Subscription
  def self.all
    1.upto(10).map { |id| new(id, "name_#{id}") }
  end

  def initialize(id, name)
    @id, @name = id, name
  end

  def active
    [true, false].sample
  end

  def to_json
    {id: @id, name: @name}
  end

  attr_accessor :id, :name
end
