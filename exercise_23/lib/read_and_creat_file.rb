class ReadAndCreateFile 
  
  def initialize
    #capitalize_fullname(firstname, lastname)
    file = File.new("../lib/newfile.csv", "w")
  end
  def capitalize_fullname(firstname, lastname)
    new_firstname = firstname.slice(0,1).capitalize + firstname.slice(1..-1)
  #  @_firstname, @_lastname = new_firstname, lastname
  end

 
end