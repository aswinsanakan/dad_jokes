require "dad_jokes/version"
require "faraday"
require "faraday_middleware"
require "json"
require 'pry'

module DadJokes

  API_URL = "https://icanhazdadjoke.com/"
  API_HEADERS = {"Accept": "application/json"}

  def self.random
    uri = "/"
    response = connection.get(uri)
    parsed_response = parse_response(response.body)
    joke = parsed_response['joke']
    id = parsed_response['id']
    joke
  end

  def self.fetch(joke_id:)
    uri = "/j/#{joke_id}"
    response = connection.get(uri)
    parsed_response = parse_response(response.body)
    joke = parsed_response['joke']
  end

  private
  
  def self.connection
    Faraday.new(url: API_URL, headers: API_HEADERS)
  end

  def self.parse_response(body)
    JSON.parse(body)
  end

end
