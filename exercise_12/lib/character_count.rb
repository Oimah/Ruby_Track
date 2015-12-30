class CharacterCount 

  def generate_case_count_hash(string_value)
    hash = Hash.new(0);

    string_array = string_value.chomp.delete(" ").split("")
    string_array.each do |c|
    case get_character_case(c)
      when 1 then hash[:uppercase_count] += 1
      when 2 then hash[:lowercase_count] += 1
      when 3 then hash[:number_count] += 1
    else
       hash[:special_character_count] += 1
    end

  end
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