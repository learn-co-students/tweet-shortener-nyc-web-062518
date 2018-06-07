def dictionary
  {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => '@',
    "and" => '&',
  }
end

def word_substituter(tweet)
  tweet = tweet.split
  tweet.each do |word|
    if dictionary.keys.include?(word.downcase)
      tweet_index = tweet.index(word)
      tweet[tweet_index] = dictionary[word.downcase]
    end
  end
  tweet.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  tweet = selective_tweet_shortener(tweet)
  if tweet.size > 140
    tweet = "#{tweet[1..137]}..."
  end
  tweet
end
