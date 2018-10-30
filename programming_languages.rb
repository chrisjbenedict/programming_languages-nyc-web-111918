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
  new_hash = {} #empty hash
  languages.each do |key, nested_hash| #iterate over each key/value pair level 1
    nested_hash.each do |name, props| #iterate over  each lever 2 key/value pairs
      new_hash[name] ||= props #add the language{type} to the hash if it exists or equals the attribute
      new_hash[name][:style] ||= [] #add a new style attribute to the language
      new_hash[name][:style] << key #add the key from level 1 to the style attribute
    end
  end
  new_hash #return hash
end
