
class String 

  def match_string(string_value)
    "Matched string\n #{string_value.gsub(/(#{self})/i , '(\1)')} ? Total Occurences found: #{string_value.scan(/(?=#{self})/).count}" 
  end
end