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
  dictionary
  tweet = tweet.dup
  dictionary.each do |word, replacement|
    if tweet.include?(word)
      tweet.gsub!(/\b#{word}\b/i, replacement)
    end
  end
  tweet
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
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0..136] + "..."
  else
    tweet
  end
end