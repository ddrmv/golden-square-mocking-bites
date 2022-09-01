require 'time_error'
require 'json'
require 'date'

RSpec.describe TimeError do
  it "shows error between provider time and local time" do
    fake_time_server = double(:time_server)
    allow(fake_time_server).to receive(:get)
      .with(URI("https://worldtimeapi.org/api/ip"))
      .and_return('{"abbreviation":"BST","client_ip":"78.150.129.174",' \
      '"datetime":"2022-09-01T00:50:03.311647+01:00","day_of_week":4,' \
      '"day_of_year":244,"dst":true,"dst_from":"2022-03-27T01:00:00+00:00",' \
      '"dst_offset":3600,"dst_until":"2022-10-30T01:00:00+00:00",' \
      '"raw_offset":0,"timezone":"Europe/London","unixtime":1661989803,' \
      '"utc_datetime":"2022-08-31T23:50:03.311647+00:00",' \
      '"utc_offset":"+01:00","week_number":35}')
    
    time_error = TimeError.new(fake_time_server)
    local_time = Time.new(2022,9,1,00,50,03)
    expect(time_error.error(local_time)).to eq 0.311647
  end
end