require 'twitter'

twitter_config = {
  :consumer_key    => "",
  :consumer_secret => "",
}

twitter = Twitter::REST::Client.new(twitter_config)

# get the last 5 tweets sent to justin bieber
bieber_tweets = twitter.search("to:justinbieber", :result_type => "recent").take(3)

# output the loaded tweets
bieber_tweets.each{|tweet| puts "From User: #{tweet.user.screen_name} Text: #{tweet.text}"}

# output the text of the last 5 tweets with the hashtag #ohlauer
puts twitter.search('#ohlauer', :result_type => "recent").take(5).map(&:text)

