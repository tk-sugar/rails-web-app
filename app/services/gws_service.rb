class GwsService < ApplicationService
  require 'net/http'
  require 'uri'
  require 'json'
  require 'logger'

  def self.get_area_master
    logger = Logger.new("#{Rails.root}/log/gws_api.log")

    params = URI.encode_www_form({keyid: ENV['GWS_ACCESS_KEY'], format: ENV['GWS_FORMAT'], lang: ENV['GWS_LANG']})
    uri = URI.parse(ENV['GWS_API_URL'])
    uri.path = ENV['GWS_API_PATH']
    uri.query = params

    begin
      response = Net::HTTP.start(uri.host, uri.port, use_ssl: uri.scheme == 'https') do |http|
        http.open_timeout = 5
        http.read_timeout = 10
        http.get(uri.request_uri)
      end

      case response
      when Net::HTTPSuccess
        File.open("#{Rails.root}/files/api/area_master.json","w") do |f|
          json = JSON.parse(response.body)
          json = JSON.pretty_generate(json)
          f.print json
        end
      when Net::HTTPRedirection
        logger.warn("Redirection: code=#{response.code} message=#{response.message}")
      else
        logger.error("HTTP ERROR: code=#{response.code} message=#{response.message}")
      end

    rescue IOError => e
      logger.error(e.message)
    rescue TimeoutError => e
      logger.error(e.message)
    rescue JSON::ParserError => e
      logger.error(e.message)
    rescue => e
      logger.error(e.message)
    end
  end

end
