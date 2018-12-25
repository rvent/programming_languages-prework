# def reformat_languages(languages)
#   # your code here
#   new_hash = {}
#   language_style = languages.keys
#   language_values = languages.values
#   language_name = language_values.map {|value| value.keys}
#   language_name.flatten.uniq.each do |name|
#     language_values.each do |value|
#       if value[name] != nil
#         new_hash[name] = value[name]
#       end
#     end
#     new_hash[name][:style] = []
#     language_style.each do |key|
#       if languages[key].include?(name)
#         new_hash[name][:style] << key
#       end
#     end
#   end
#   new_hash
# end

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |k, v|
    language_name = v.map {|val| val.keys}
    language_name.each do |name|
      if value[name] != nil
        new_hash[name] = val[name]
      end
      new_hash[name][:style] = []
      if languages[key].include?(name)
        new_hash[name][:style] << key
      end
    end
  end
  new_hash
end
