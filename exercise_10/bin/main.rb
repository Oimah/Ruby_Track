require_relative "../lib/hash_class_with_inject.rb"

class Main
def initialize
  array =  ['abc','def',1234,234,'abcd','x','mnop',5,'zZzZ']
  hash_instance_object = HashClassWithInject.new
  hash_value = hash_instance_object.get_hash(array)
 # puts hash_value
  puts "even hash :\n #{hash_value["even"]}"
   puts "odd hash :\n #{hash_value["odd"]}"
end
end

 Main.new
