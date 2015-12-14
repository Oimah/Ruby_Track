require_relative "../lib/hash_class.rb"

  array =  ['abc','def',1234,234,'abcd','x','mnop',5,'zZzZ']
  hash_instance_object = HashClass.new
  puts "resulting hash :\n #{hash_instance_object.get_hash(array)}"
