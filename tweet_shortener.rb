def dictionary
  entries = {
  "hello": 'hi',
  "to": '2',
  "two": '2',
  "too": '2',
  "for": '4',
  "four": '4',
  'be': 'b',
  'you': 'u',
  "at": "@",
  "and": "&"
}
end

def word_substituter(string)
  splitTweet = string.split(" ")
  keys = dictionary.keys
  splitTweet.each_with_index { | word, i |
    wordClean = word.downcase.gsub(/[\W\s\d]/, '')
    if keys.include? wordClean.to_sym
      splitTweet[i] = dictionary[wordClean.to_sym]
    end
  }
  splitTweet.join(" ")
end

puts word_substituter("Hello, my name is Daniel, I love you very much.")
