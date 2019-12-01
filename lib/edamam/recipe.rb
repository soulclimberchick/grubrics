require "httparty"

module Edamam
  class Recipe
    def self.search(q)
      app_id = ENV.fetch("APP_ID")
      app_key = ENV.fetch("APP_KEY")
      url = "https://api.edamam.com/search?q=#{q}&app_id=#{app_id}&app_key=#{URI.encode(app_key)}"
      results = JSON.parse(HTTParty.get(url).body)
      results["hits"]
    end
  end
end

#dotenv
