# Write your code here.
def dictionary(keyword)
  dictionary = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "For" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
  shortenedWord = dictionary[keyword]
  return shortenedWord
end

def word_substituter(stringOfTweet)
  arrayOfTweet = stringOfTweet.split()
  count = 0
  while count < arrayOfTweet.length() - 1
    if dictionary(arrayOfTweet[count]) != nil
      arrayOfTweet[count] = dictionary(arrayOfTweet[count])
    end
    count = count + 1
  end
  return arrayOfTweet.join(" ")
end

def bulk_tweet_shortener(arrayOfTweets)
  arrayOfTweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(stringOfTweet)
  if stringOfTweet.length() > 140
    return word_substituter(stringOfTweet)
  else
    return stringOfTweet
  end
end

def shortened_tweet_truncator(stringOfTweet)
  if stringOfTweet.length() > 140
    (stringOfTweet[0..136]).prepend("...")
  else
    return stringOfTweet
  end
end
