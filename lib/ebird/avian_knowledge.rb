require 'httparty'
require 'csv'

module EBird
  class AvianKnowledge
    include HTTParty

    base_uri 'www.avianknowledge.net/ws1.0'

    def country_list
      options = {:query => {:format => 'csv'}}
      data = self.class.get("/ref/country/list", options)
      data.gsub!(/,\n/, ',')
      CSV.parse(data)
    end

    def subnational1_list(query_options={})
      options = {:query => {:format => 'csv'}}
      options[:query].merge!(query_options)
      data = self.class.get("/ref/subnational1/list", options)
      data.gsub!(/,\n/, ',')
      CSV.parse(data)
    end
  end
end
