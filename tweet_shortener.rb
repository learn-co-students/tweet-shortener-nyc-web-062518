# Write your code here.
def dictionary
 {
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
  output = []
  array = tweet.split(" ")
  bad_words = dictionary.keys
  array.map do |word|
    if bad_words.include?(word.downcase)
      word = dictionary[word.downcase]
    end
    output << word
  end
  output.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |sentence|
    puts word_substituter(sentence)
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
  new_tweet = selective_tweet_shortener(tweet)
  if new_tweet.length > 140
    new_tweet = new_tweet[0..139]
  end
  new_tweet
end