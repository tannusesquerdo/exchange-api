require 'faraday'
require 'json'

class Connection
  # Address of the exchangerate-api
  BASE_URI = 'https://open.exchangerate-api.com/v6/'
  
  def self.api
    Faraday.new(url: BASE_URI) do |faraday|
      faraday.response :logger
      faraday.adapter Faraday.default_adapter
      faraday.headers['Content-Type'] = 'application/json'
    end
  end
end