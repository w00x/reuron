class ActivationSigmoid < Activation
  def activate val
    return 1/(1+Math.exp(-val))
  end

  def derivative_activate val
    return val*(1-val)
  end
end