require 'rest-client'
require 'json'


class BaseRestClient

  def initialize(base_url)
    @base_url = base_url
  end

  def get (endpoint, params = {})
    url = build_url(endpoint, params)
    response = RestClient.get(url)
    handle_response(response)

  end

  def json
    # code here
  end

  def post(endpoint, body ={}, headers ={})
    url = build_url(endpoint)
    response = RestClient.post(url, body.to_json, {content_type: json, accept:json}.merge(headers))
    handle_response(response)
  end

  def delete(endpoint, params = {}, headers = {})
    url = build_url(endpoint, params)
    response = RestClient.delete(url, headers)
    handle_response(response)
  end
  private

  def build_url(endpoint, params = {})
    url = URI.join(@base_url, endpoint).to_s
    url += "?#{URI.encode_www_form(params)}" unless params.empty?
    url
  end
  def handle_response(response)
    case response.code
    when 200..299
      JSON.parse(response.body)
    else raise "Error: #{response.body} - #{response.body}"
    end
  end










end