class CharacterCount 

def generate_case_count_hash(string_value)
  hash = Hash.new
  uppercase_count = 0
  lowercase_count = 0
  number_count = 0
  special_character_count = 0

  string_array = string_value.chomp.delete(" ").split("")
  string_array.each do |c|
  case get_character_case(c)
    when 1 then uppercase_count+= 1
    when 2 then lowercase_count+= 1
    when 3 then number_count+= 1
  else
    special_character_count+= 1
  end

end
  hash[:uppercase_count] =uppercase_count
  hash[:lowercase_count] =lowercase_count
  hash[:number_count] =number_count
  hash[:special_character_count] =special_character_count
  hash
end


def get_character_case(letter)
  case letter
    when /[[:upper:]]/ then return 1
    when /[[:lower:]]/ then return 2
    when /[[:digit:]]/ then return 3
    else return 4
  end
end
end