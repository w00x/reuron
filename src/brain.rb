class Brain
  attr_accessor :layers, :epoch, :activation_function

  def initialize params
    layers_param = params[:layers] || []
    @epoch = params[:epoch] || 0
    @activation_function = params[:activation_function]

    @layers = []

    layers_param.each do |lp|
      @layers << Layer.new(lp)
    end
  end
end