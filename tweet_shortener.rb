# Write your code here.

def dictionary
  dictionary = {
    "hello" => 'hi',
    "to" => '2' ,
    "two" => '2' ,
    "too" => '2' ,
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@" ,
    "and" => "&"
  }
end  
  
def word_substituter(tweet)
  tweet_array = tweet.split(" ") 
  new_tweet_array = []
  tweet_array.each do |x|
    if dictionary.keys.include?(x.downcase)
      new_tweet_array << dictionary[x.downcase]
    else
      new_tweet_array << x 
    end
  end
  new_tweet_array.join(" ")
end

def bulk_tweet_shortener(tweet)
  tweet.each {|x| puts word_substituter(x)}
end

def selective_tweet_shortener(tweet)
  if tweet.length <= 140
    tweet
  else
    word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length <= 140
    tweet
  else
    word_substituter(tweet)[0..136] + "..."
  end  
end