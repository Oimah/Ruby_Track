
class Interest
  attr_accessor :rate
  def initialize
    @rate = 0.1
  end

  def calculate_compound_interest(hash)
    amount = (hash[:principal].to_i * ((1 + (@rate/hash[:compounded_times].to_i)) ** (hash[:compounded_times].to_i * hash[:duration].to_i)) )
  end

  def calculate_simple_interest(hash)
    simple_interest = hash[:principal].to_i * @rate * hash[:duration].to_i
  end

  def get_amount_for_simple_interest(hash)
    amount = hash[:principal].to_i + calculate_simple_interest(hash)
  end
  def difference_in_interests(hash)
    diff = calculate_compound_interest(hash) - get_amount_for_simple_interest(hash)
  end

end