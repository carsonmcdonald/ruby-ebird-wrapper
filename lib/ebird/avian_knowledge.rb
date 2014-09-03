require 'httparty'
require 'csv'

module EBird
  class AvianKnowledge
    include HTTParty
    base_uri 'ebird.org/ws1.1'

    def country_list
      options = {:query => {:rtype => 'country', :format => 'csv'}}
      self.class.get('/ref/location/list', options).parsed_response
    end

    def subnational1_list(query_options={:countryCode => 'US'})
      options = {:query => {:rtype => 'subnational1', :format => 'csv'}}
      options[:query].merge!(query_options)
      self.class.get("/ref/location/list", options).parsed_response
     end
  end
end
