require 'ebird'
require 'pp'

#
# This file contains an example of every call that can be made with the library
#

ak = EBird::AvianKnowledge.new

#pp ak.country_list

#pp ak.subnational1_list
#pp ak.subnational1_list(:countryCode => 'US')

ebird = EBird::EBird.new

#pp ebird.species_reference
#pp ebird.species_reference(:locale => 'fr_CA')
#pp ebird.species_reference(:cat => 'hybrid')

#pp ebird.hotspot_reference('subnational1', 'US-KY')

#pp ebird.hotspot_geo(38, -85)

#pp ebird.recent_observations('L99381')

#pp ebird.recent_observations_geo(38, -85)

#pp ebird.recent_species_observations_geo(38, -85, 'Hirundo rustica')

#pp ebird.recent_observations_hotspot('L99381')

#pp ebird.recent_species_observations_hotspot('L99381', 'Hirundo rustica')

#pp ebird.recent_observations_location('L99381')

#pp ebird.recent_species_observations_location('L99381', 'Hirundo rustica')

#pp ebird.recent_observations_region('subnational1', 'US-KY')

#pp ebird.recent_species_observations_region('subnational1', 'US-KY', 'Hirundo rustica')

#pp ebird.recent_notable_observations_geo(38, -85)

#pp ebird.recent_notable_observations_hotspot('L149830')

#pp ebird.recent_notable_observations_location('L149830')

#pp ebird.recent_notable_observations_region('subnational1', 'US-KY')

#pp ebird.nearest_species_observation_location(38, -85, 'Hirundo rustica')
