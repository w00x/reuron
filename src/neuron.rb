class Neuron
  attr_reader :node_values, :activation_function

  def initialize activation_function
    @node_values = []
    @activation_function = activation_function
  end

  def add_node node
    @node_values << node
  end

  def activate
    activation.activate = ActivationFactory.new @activation_function
    @sum = self.sumatorize

    return activation(@sum)
  end

  private

  def sumatorize
    @node_values.sum(&:ponderize)
  end
end