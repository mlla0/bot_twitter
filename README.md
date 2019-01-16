# Bot twitter 

#### In the "lib" folder you will find two files: 

The "app.rb" file use several fonctions related to the twitter gem.
  * `def login` 
  * `def tweet_sthg`
  * `def select_5_rand_journalist`
  * `def tweet_5_journalists`
  * `def like_25_bonjour_monde`
  * `def follow_20_bonjour_monde`


The "app_streaming.rb" file use 3 definitions.

	In order to track a certain kind of topics (like #bonjour_monde), we have to use different clients. We use a client 'live' with streaming mode to track the topic and a client 'fixed' with Rest mode to like and follow the person who posted the tweet.

	The `def track_tweet` definition is the only one we need to perform. 
	By using the streaming client it track the topic and then apply for each the definition `def like_follow`.


![alt text](https://media.giphy.com/media/26BRxIdjE82KNmVJm/giphy.gif "gif cuicui")
