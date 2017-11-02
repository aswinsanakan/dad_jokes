require "dad_jokes/version"
require "faraday"
require "faraday_middleware"
require "json"
require 'open-uri'

module DadJokes

  API_URL = "https://icanhazdadjoke.com".freeze
  API_HEADERS = {"Accept": "application/json"}
  DEFAULT_LIMIT = 5

  def self.random
    uri = "/"
    joke_object = parse_response(uri)
    get_joke(joke_object)
  end

  def self.random_image
    uri = "/"
    joke_object = parse_response(uri)
    joke_id = get_id(joke_object)
    image_uri = "/j/#{joke_id}.png"
    url = File.join(API_URL, image_uri).to_s
    download = open(url)
    path = get_image_save_path(joke_id)
    IO.copy_stream(download, path)
    "#{get_joke(joke_object)} ( Saved as image in location: #{path} !)"
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

  def self.get_id(joke_object)
    joke_object['id']
  end

  def self.filter_jokes(jokes_hash)
    jokes_arr = jokes_hash['results'] || []
    jokes = []
    jokes_arr.each do |joke|
      jokes << joke['joke']
    end
    jokes
  end
  
  def self.connection
    Faraday.new(url: API_URL, headers: API_HEADERS)
  end

  def self.get_image_save_path(joke_id)
    if in_rails_app?
      File.join(Rails.root,"public","dadjokes","joke_#{joke_id}.png")
    else
      "joke_#{joke_id}.png"
    end 
  end

  def self.in_rails_app?
    klass = Module.const_get("Rails")
    return klass.is_a?(Module)
  rescue NameError
    return false
  end

end
