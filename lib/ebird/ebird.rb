require 'httparty'

module EBird
  class EBird
    include HTTParty

    base_uri 'ebird.org/ws1.1'

  # Data

    def recent_observations_geo(lat, lng, query_options={})
      options = {:query => {:lat => lat, :lng => lng, :fmt => 'xml'}}
      options[:query].merge!(query_options)
      self.class.get("/data/obs/geo/recent", options)
    end

    def recent_species_observations_geo(lat, lng, sci, query_options={})
      options = {:query => {:lat => lat, :lng => lng, :sci => sci, :fmt => 'xml'}}
      options[:query].merge!(query_options)
      self.class.get("/data/obs/geo_spp/recent", options)
    end

    def recent_observations_hotspot(r, query_options={})
      options = {:query => {:r => r, :fmt => 'xml'}}
      options[:query].merge!(query_options)
      self.class.get("/data/obs/hotspot/recent", options)
    end

    def recent_species_observations_hotspot(r, sci, query_options={})
      options = {:query => {:r => r, :sci => sci, :fmt => 'xml'}}
      options[:query].merge!(query_options)
      self.class.get("/data/obs/hotspot_spp/recent", options)
    end

    def recent_observations_location(r, query_options={})
      options = {:query => {:r => r, :fmt => 'xml'}}
      options[:query].merge!(query_options)
      self.class.get("/data/obs/loc/recent", options)
    end

    def recent_species_observations_location(r, sci, query_options={})
      options = {:query => {:r => r, :sci => sci, :fmt => 'xml'}}
      options[:query].merge!(query_options)
      self.class.get("/data/obs/loc_spp/recent", options)
    end

    def recent_observations_region(rtype, r, query_options={})
      options = {:query => {:r => r, :rtype => rtype, :fmt => 'xml'}}
      options[:query].merge!(query_options)
      self.class.get("/data/obs/region/recent", options)
    end

    def recent_species_observations_region(rtype, r, sci, query_options={})
      options = {:query => {:r => r, :rtype => rtype, :sci => sci, :fmt => 'xml'}}
      options[:query].merge!(query_options)
      self.class.get("/data/obs/region_spp/recent", options)
    end

    def recent_notable_observations_geo(lat, lng, query_options={})
      options = {:query => {:lat => lat, :lng => lng, :fmt => 'xml'}}
      options[:query].merge!(query_options)
      self.class.get("/data/notable/geo/recent", options)
    end

    def recent_notable_observations_hotspot(r, query_options={})
      options = {:query => {:r => r, :fmt => 'xml'}}
      options[:query].merge!(query_options)
      self.class.get("/data/notable/hotspot/recent", options)
    end

    def recent_notable_observations_location(r, query_options={})
      options = {:query => {:r => r, :fmt => 'xml'}}
      options[:query].merge!(query_options)
      self.class.get("/data/notable/loc/recent", options)
    end

    def recent_notable_observations_region(rtype, r, query_options={})
      options = {:query => {:r => r, :rtype => rtype, :fmt => 'xml'}}
      options[:query].merge!(query_options)
      self.class.get("/data/notable/region/recent", options)
    end

    def nearest_species_observation_location(lat, lng, sci, query_options={})
      options = {:query => {:lat => lat, :lng => lng, :sci => sci, :fmt => 'xml'}}
      options[:query].merge!(query_options)
      self.class.get("/data/nearest/geo_spp/recent", options)
    end


  # Products

    def recent_observations(r, query_options={})
      options = {:query => {:r => r, :fmt => 'xml'}}
      options[:query].merge!(query_options)
      self.class.get("/product/obs/hotspot/recent", options)
    end

  # References

    def species_reference(query_options={})
      options = {:query => {:fmt => 'xml'}}
      options[:query].merge!(query_options)
      self.class.get("/ref/taxa/ebird", options)
    end

    def hotspot_reference(rtype, r, query_options={})
      options = {:query => {:rtype => rtype, :r => r, :fmt => 'xml'}}
      options[:query].merge!(query_options)
      self.class.get("/ref/hotspot/region", options)
    end

    def hotspot_geo(lat, lng, query_options={})
      options = {:query => {:lat => lat, :lng => lng, :fmt => 'xml'}}
      options[:query].merge!(query_options)
      self.class.get("/ref/hotspot/geo", options)
    end
  end
end
