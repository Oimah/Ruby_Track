
class Interest
  attr_accessor :rate
  def initialize
    @rate = 0.1
  end

  def compound_interest(computation_values)
    amount = (computation_values[:principal].to_i * ((1 + (@rate/computation_values[:compounded_times].to_i)) ** (computation_values[:compounded_times].to_i * computation_values[:duration].to_i)) )
  end

  def simple_interest(computation_values)
    _simple_interest = computation_values[:principal].to_i * @rate * computation_values[:duration].to_i
  end

  def get_amount_for_simple_interest(computation_values)
    amount = computation_values[:principal].to_i + simple_interest(computation_values)
  end
  def difference_in_interests(computation_values)
    diff = compound_interest(computation_values) - get_amount_for_simple_interest(computation_values)
  end

end