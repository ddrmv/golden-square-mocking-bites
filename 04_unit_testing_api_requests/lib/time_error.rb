require 'date'
require 'json'
require 'net/http'

class TimeError
  def initialize(time_server)
    @time_server = time_server
  end

  def error(local_time)
    return get_server_time(@time_server) - local_time
  end

  private

  def get_server_time(time_server)
    text_response = time_server.get(URI("https://worldtimeapi.org/api/ip"))
    json = JSON.parse(text_response)
    return DateTime.parse(json["utc_datetime"]).to_time
  end
end