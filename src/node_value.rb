class NodeValue
  attr_accessor :name, :value, :weight

  def initialize value
    @value = value
    @weight = rand
    @weight += 0.001 if @weight.zero?
  end

  def ponderize
    return @value*@weight
  end
end