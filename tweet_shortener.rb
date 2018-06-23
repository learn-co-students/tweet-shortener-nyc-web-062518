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
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet_arry = tweet.split(" ")
  tweet_new_array = []
  tweet_new = ""
  
  replace_dict = dictionary
  replace_words = replace_dict.keys
  
  tweet_arry.each do |word|
    if replace_words.include?(word) || replace_words.include?(word.downcase)
      tweet_new_array << replace_dict[word.downcase]
    else
      tweet_new_array << word
    end
  end
  
  tweet_new = tweet_new_array.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  #array_of_tweets.each do |tweet|
    if tweet.length > 140
      word_substituter(tweet)
    else
      tweet
    end
  #end
end

def shortened_tweet_truncator(tweet)
  if selective_tweet_shortener(tweet).length > 140
    selective_tweet_shortener(tweet)[0...140]
  else
    selective_tweet_shortener(tweet)
  end
end

