class GoogleSearch
  require 'open-uri'
  require 'json'

  attr_reader :search_type, :q, :size

  BASE_URL = "https://ajax.googleapis.com/ajax/services/search"

  def initialize(options = {})
    @search_type = options[:search_type]
    @q = options[:q]
    @size = options[:size] || 8
  end

  def results
    get_results
  end

  private

  def get_results
    convert_results_from(json_results)
  end

  def json_results
    results = open(url).read
    JSON.parse(results)["responseData"]["results"]
  end

  def convert_results_from collection
    collection.map { |item| SearchResult.new(item) }
  end

  def url
    "#{BASE_URL}/#{search_type}?v=1.0&q=#{q}&rsz=#{size}"
  end

end