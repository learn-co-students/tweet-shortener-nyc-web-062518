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

  splitTweet.each_with_index { | word, i |
    wordClean = word.downcase.gsub(/[\W\s\d]/, '')
    if dictionary.keys.include? wordClean.to_sym
      splitTweet[i] = splitTweet[i].downcase.gsub wordClean, dictionary[wordClean.to_sym]
    end
  }
  splitTweet.join(" ")
end


def bulk_tweet_shortener(array)
  array.collect { |x| puts word_substituter(x) }
end

def selective_tweet_shortener(string)
  if string.length > 140
    word_substituter(string)
  else string
  end
end

def shortened_tweet_truncator(string)
  shortened = selective_tweet_shortener(string)
  if shortened.length > 140
    shortened.slice!(0..136) << "..."
  else string
  end
end
