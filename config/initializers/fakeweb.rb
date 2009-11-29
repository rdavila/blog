if defined?(FakeWeb)
  FakeWeb.allow_net_connect = false
  delicious_user = APP_CONFIG[:delicious][:user]
  delicious_pass = APP_CONFIG[:delicious][:password]
  twitter_user = APP_CONFIG[:twitter][:user]
  twitter_pass = APP_CONFIG[:twitter][:password]

  FakeWeb.register_uri(:get, "https://#{delicious_user}:#{delicious_pass}@api.del.icio.us/v1/posts/recent?count=10", :body => File.join(Rails.root, 'test/fixtures/delicious.xml'))
  FakeWeb.register_uri(:get, "http://#{twitter_user}:#{twitter_pass}@twitter.com/statuses/user_timeline.json?count=10&", :body => File.join(Rails.root, 'test/fixtures/twitter.json'))
end
