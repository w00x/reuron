class ActivationFactory
  def self.get activation
    case activation
    when "sigmoide"
      return ActivationSigmoid.new
    end
  end
end