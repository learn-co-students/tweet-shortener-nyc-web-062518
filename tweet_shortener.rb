require "pry"
# Write your code here.
def dictionary
  dictionary = {"hello" => "hi", "two" => "2", "to" => "2", "too" => "2", "for" => "4", "four" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&"}
end

def word_substituter(tweet)
  new_tweet = []
  tweet_array = tweet.split(" ")
  dictionary_keys = dictionary.keys
  tweet_array.each do |word|
    if dictionary_keys.include?(word.downcase)
      word = dictionary[word.downcase]
    end
    new_tweet << word
  end
  new_tweet.join(" ")
end

def bulk_tweet_shortener(array)
  array.collect! do |tweet|
    puts word_substituter(tweet)
    #binding.pry
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
   word_substituter(tweet)
  else
   tweet
  end
  #binding.pry
end

def shortened_tweet_truncator(tweet)
  shortened_tweet = word_substituter(tweet)
  if shortened_tweet.length > 140
    truncated = shortened_tweet[0..139]
    truncated
  else
    shortened_tweet
  end
      #binding.pry
end
