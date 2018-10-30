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
   new_hash = {}
   languages.each do |type, nested_hash|
     nested_hash.each do |name, attributes|
       new_hash[name] ||= attributes
       new_hash[name][:style] ||= []
       new_hash[name][:style] << type
     end
   end
   new_hash
end
