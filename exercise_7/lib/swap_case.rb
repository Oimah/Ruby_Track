class SwapCase 
  attr_accessor :input_string

  def initialize(sentence)
    @input_string = sentence
  end

  def to_s
  @input_string.swapcase
end
 end