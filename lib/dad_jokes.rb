require "dad_jokes/version"
require "faraday"
require "faraday_middleware"
require "json"
require 'pry'

module DadJokes

  API_URL = "https://icanhazdadjoke.com/".freeze
  API_HEADERS = {"Accept": "application/json"}
  DEFAULT_LIMIT = 5

  def self.random
    uri = "/"
    joke_object = parse_response(uri)
    get_joke(joke_object)
  end

  def self.fetch(joke_id:)
    uri = "/j/#{joke_id}"
    joke_object = parse_response(uri)
    get_joke(joke_object)
  end

  def self.search(term: '',limit: DEFAULT_LIMIT)
    uri = "/search?term=#{term}&limit=#{limit}"
    response = connection.get(uri)
    jokes_hash = JSON.parse(response.body)
    jokes = filter_jokes(jokes_hash)
    jokes
  end

  private

  def self.parse_response(uri)
    response = connection.get(uri)
    JSON.parse(response.body)
  end

  def self.get_joke(joke_object)
    joke_object['joke']
  end

  def self.filter_jokes(jokes_hash)
    # binding.pry
    jokes_arr = jokes_hash['results']
    jokes = []
    jokes_arr.each do |joke|
      jokes << joke['joke']
    end
    jokes
  end
  
  def self.connection
    Faraday.new(url: API_URL, headers: API_HEADERS)
  end

  def self.parse_response(body)
    
  end

end
