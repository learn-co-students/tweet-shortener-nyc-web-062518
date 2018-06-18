require "pry"

def dictionary
dictionary = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
  }
end

def word_substituter(tweet)
  new_array = []
  array = tweet.split(" ")
  shorthand = dictionary.keys
  array.each do |word|
    if shorthand.include?(word.downcase)
      word = dictionary[word.downcase]
  end
    new_array << word
  end
  new_array.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if selective_tweet_shortener(tweet).length > 140
    selective_tweet_shortener(tweet)[0..139]
  else
    selective_tweet_shortener(tweet)
  end
end
