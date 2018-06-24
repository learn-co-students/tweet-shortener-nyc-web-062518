




array_of_tweets = ["Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!","OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?","I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real."]

def dictionary(tweet)
  dictionary_hash={
              "hello" => "hi",
              "to" => "2",
              "two" => "2",
              "too" => "2",
              "four" => "4",
              "for" => "4",
              "be" => "b",
              "you" => "u",
              "at" => "@",
              "and" => "&",
  }
  tweet_array = tweet.split(" ")
  dictionary_keys = dictionary_hash.keys
  tweet_array.each_with_index do |word,index|
      dictionary_keys.each do |key|
        if word.downcase == key 
          tweet_array[index] = dictionary_hash[key]
        end
    end
  end
  reassembled_tweet = tweet_array.join(" ")
  return reassembled_tweet
end

def word_substituter(tweet)
  a = dictionary(tweet)
  return a
end

def bulk_tweet_shortener(array_of_tweets)
  
  array_of_tweets.each_with_index do |tweet,index|
    this_tweet = array_of_tweets[index]
    array_of_tweets[index] = word_substituter(this_tweet)
    puts array_of_tweets[index]
  end
end

def selective_tweet_shortener(tweet)
  if tweet.size <= 140
    return tweet
  else
    return word_substituter(tweet)
  end
end

tweet = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!LALALA"


def shortened_tweet_truncator(tweet)
  shortened_tweet = word_substituter(tweet)
  if shortened_tweet.size>140
    shortened_tweet = shortened_tweet.slice!(0..137)
    shortened_tweet[137] ="..."
    return shortened_tweet
  else
    return shortened_tweet
  end
end





  





