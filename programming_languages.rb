languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}

def reformat_languages(languages)
  # your code here
  new_hash = {}
  language_style = languages.keys
  language_values = languages.values
  language_name = language_values.map {|value| value.keys}
  unique_language_name = language_name.flatten.uniq
  unique_language_name.each do |name|
    new_hash[name][:style] = []
    language_values.each do |value|
      if value[name] != nil
        new_hash[name] = value[name]
      end
    end
    language_style.each do |key|
      if languages[key].include?(name)
        new_hash[name][:style] << key
      end
    end
  end
  new_hash
end

puts reformat_languages(languages)
