class Layer
  attr_accessor :neurons

  def initialize size
    @neurons = []
    size.times do
      @neurons << Neuron.new
    end
  end
end