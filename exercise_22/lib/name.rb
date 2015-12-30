require_relative "invalid_name_error.rb"

class Name 
  attr_accessor :_firstname, :_lastname

  def initialize(firstname, lastname)
    capitalize_fullname(firstname, lastname)
  end

  def capitalize_fullname(firstname, lastname)
    begin
    raise InvalidNameError,"firstname or lastname is empty" unless firstname.length > 0 && lastname.length > 0 
      new_firstname = firstname.slice(0,1).capitalize + firstname.slice(1..-1)
      @_firstname, @_lastname = new_firstname, lastname
    rescue InvalidNameError
      puts "firstname or lastname is empty"
    end
  end 

end




