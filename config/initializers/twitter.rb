auth = Twitter::HTTPAuth.new(APP_CONFIG[:twitter][:user], 
                             APP_CONFIG[:twitter][:password])
TWITTER_CLIENT = Twitter::Base.new(auth)
