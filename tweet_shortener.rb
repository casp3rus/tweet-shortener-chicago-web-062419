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

def bulk_tweet_shortener
  
end

def selective_tweet_shortener
  
end

def shortened_tweet_truncator
  
end