class InvalidFileContentError < StandardError
  def initialize(msg="File is empty" )
    super
  end
end
