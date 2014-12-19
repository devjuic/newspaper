class TwitterConnection
  
  def client 
    Twitter::REST::Client.new do |config|
      config.consumer_key        = "bkuViHPKW96PQZndxpdPXEJjV"
      config.consumer_secret     = "TPPNlZyEwYxnTdzy54ViYfPCN7wfj5ym4H1U2HfbzfCcAxihvC"
      config.access_token        = "2857196424-OyLIucmxYTlH2m6qB0n6K2q2ZVhAZVXGQ54Gcuh"
      config.access_token_secret = "a12WPpPzOOAsKOq1Il2inLjEw6v0LO7KISJrdVlERz0oV"
    end
  end

end