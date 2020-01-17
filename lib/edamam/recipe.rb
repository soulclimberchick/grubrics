require "httparty"

module Edamam
  class Recipe
    def self.search(q)
      params = q.split(" ").select { |param| param.match("nutrients") }
      param_string = params.join("&")
      q = (q.split(" ") - params).join(" ")
      app_id = ENV.fetch("APP_ID")
      app_key = ENV.fetch("APP_KEY")
      url = "https://api.edamam.com/search?q=#{q}&app_id=#{app_id}&app_key=#{URI.encode(app_key)}&#{param_string}"
      results = JSON.parse(HTTParty.get(url).body)
      results["hits"]
    end
  end
end

#dotenv
