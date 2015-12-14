
class HighLightMatchingString 

  def match_string(string_value, search_string)
    string_value = string_value.gsub(/(#{search_string})/i , '(\1)')
  	"Matched string\n #{string_value}"
  end
end