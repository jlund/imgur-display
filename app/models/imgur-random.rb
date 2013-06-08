require 'restclient'

module Imgur

  class Random
    
    def self.get
      imgur_json = RestClient.get("http://imgur.com/gallery.json")

      images = JSON.parse(imgur_json)["data"]

      sfw = images.select { |i| i["nsfw"] == false }

      random = sfw.sample

      "http://i.imgur.com/#{ random['hash'] }#{ random['ext'] }"
    end
  end

end
