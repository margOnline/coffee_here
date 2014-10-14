require 'test_helper'

class VenueTest < ActiveSupport::TestCase
  setup do
    @data = {"venues"=>[
      {"id"=>"5165c284e4b06965a5b988cf",
        "location"=>{"lat"=>51.53592300415039, "lng"=>-0.2082590013742447, "distance"=>8252},
        "categories"=>[
          {"id"=>"4f2a23984b9023bd5841ed2c",
            "name"=>"Moving Target",
            "primary"=>true}
        ],
        "stats"=>{"checkinsCount"=>2, "usersCount"=>2, "tipCount"=>1}
      },

      {"id"=>"51508a2be4b01c6c29ffb1cc",
        "location"=>{"lat"=>51.53316867151315, "lng"=>-0.19375435577630332, "distance"=>8689},
        "categories"=>[
          {"id"=>"4bf58dd8d48988d1e0931735",
            "name"=>"Coffee Shop",
            "primary"=>true}
        ],
        "stats"=>{"checkinsCount"=>3, "usersCount"=>3, "tipCount"=>0},
      }
    ]}
    @venue = Venue.new(@data)
    pry
  end

  should 'return the number of checkins' do
    assert_equal @venue.checkins, 2
  end
end
