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
  language_type = languages.keys
  language_values = languages.values
  language_name = language_values.map {|value| value.keys}
  language_name.each do |name|
    language_values.each do |value|
      new_hash[name] = value[name]
    end
  end
  new_hash
end

puts reformat_languages(languages)
