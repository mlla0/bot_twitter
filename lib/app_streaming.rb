require "dotenv" # Appelle la gem Dotenv
require "twitter" # ligne très importante qui appelle la gem.

Dotenv.load # Ceci appelle le fichier .env grâce à la gem Dotenv, et importe toutes les données enregistrées dans un hash ENV

# puts ENV["TWITTER_CONSUMER_KEY"]

def login_STREAMING
	client = Twitter::Streaming::Client.new do |config|
	config.consumer_key = ENV["TWITTER_CONSUMER_KEY"]
	config.consumer_secret = ENV["TWITTER_CONSUMER_SECRET"]
	config.access_token = ENV["TWITTER_ACCESS_TOKEN"]
	config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
	end
	return client
end

def track_tweet(login_STREAMING)
	login_STREAMING.filter(track: "#bonjour_monde") do |tweet|
	#login.favorite(*tweet)
	like_follow(tweet)
	puts tweet.text
	#login.follow("#{tweet.user.screen_name}")
	end
end



def like_follow(tweet)
	client = Twitter::REST::Client.new do |config|
	config.consumer_key = ENV["TWITTER_CONSUMER_KEY"]
	config.consumer_secret = ENV["TWITTER_CONSUMER_SECRET"]
	config.access_token = ENV["TWITTER_ACCESS_TOKEN"]
	config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
	end
#	return client
	client.favorite(*tweet)
	client.follow("#{tweet.user.screen_name}")
end


def perform 
	track_tweet(login_STREAMING)
	
end

perform