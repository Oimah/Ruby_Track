class Name 
  attr_accessor :_firstname, :_lastname

  def initialize(firstname, lastname)
    capitalize_fullname(firstname, lastname)
  end
  def capitalize_fullname(firstname, lastname)
    new_firstname = firstname.slice(0,1).capitalize + firstname.slice(1..-1)
    @_firstname, @_lastname = new_firstname, lastname
  end

 
end