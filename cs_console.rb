# grep -nr "705512f67933aafd5e1e7addcb52552d" clientservice-release-*/*.unicorn
# Started POST "/v1/rides/prebook"
# Processing by RidesController#prebook
# Parameters: {"dropoff_location"=>{"city"=>"Belvidere", "latitude"=>"42.204735", "line1"=>"3088 Flora Road", "longitude"=>"-88.84292499999999", "postal_code"=>"61008", "state"=>"IL"}, "pickup_location"=>{"city"=>"Rosemont", "latitude"=>"41.977584", "line1"=>"10000 W O'Hare Ave", "longitude"=>"-87.90296549999999", "postal_code"=>"60666", "state"=>"IL"}, "service_type"=>"taxi", "api_version"=>"v1"}

# Started GET "/v2/estimates/fare?...
# Processing by Estimates::FareController#estimate
# Parameters: {"dropoff_location"=>{"city"=>"Belvidere", "latitude"=>"42.204735", "line1"=>"3088 Flora Road", "longitude"=>"-88.84292499999999", "postal_code"=>"61008", "state"=>"IL"}, "payment_method_id"=>"89394", "pickup_location"=>{"city"=>"Rosemont", "latitude"=>"41.977584", "line1"=>"10000 W O'Hare Ave", "longitude"=>"-87.90296549999999", "postal_code"=>"60666", "state"=>"IL"}, "pickup_time"=>"1678471200", "service_type"=>"taxi", "total_passengers"=>"1", "api_version"=>"v2"}
# Unable to decode token
# Using Estimates::FareRequest to find fare estimate for partner Partners::GenericPartner
# Unable to decode token
# Provider Search Params -  {:pickup_location_hash=>{:postal_code=>"60666", :latitude=>"41.977584", :longitude=>"-87.90296549999999", :line1=>"10000 W O'Hare Ave", :city=>"Rosemont", :state=>"IL"}, :dropoff_location_hash=>{:postal_code=>"61008", :latitude=>"42.204735", :longitude=>"-88.84292499999999", :line1=>"3088 Flora Road", :city=>"Belvidere", :state=>"IL"}, :pickup_time=>"2023-03-10 18:00:00", :user_id=>129238, :virtualize=>true, :estimate_fares=>true, :estimate_fees=>true, :payments_service_payment_method_id=>"89394", :service_type_key=>"taxi", :booking_requirements=>nil, :metadata=>nil, :total_passengers=>"1", :booking_channel_key=>"iphone_taxi_magic", :version=>2, :provider_ids=>nil, :copay_program=>nil}

params = {
  dropoff_location:{
    city:"Belvidere",
    latitude:"42.204735",
    line1:"3088 Flora Road",
    longitude:"-88.84292499999999",
    postal_code:"61008",
    state:"IL"},
  payment_method_id:"89394",
  pickup_location:{
    city:"Rosemont",
    latitude:"41.977584",
    line1:"10000 W O'Hare Ave",
    longitude:"-87.90296549999999",
    postal_code:"60666",
    state:"IL"},
  pickup_time:"1678471200",
  service_type:"taxi",
  total_passengers:"1",
  api_version:"v2"}

provider_search_params = {
  pickup_location_hash:{
    postal_code:"60666",
    latitude:"41.977584",
    longitude:"-87.90296549999999",
    line1:"10000 W O'Hare Ave",
    city:"Rosemont",
    state:"IL"},
  dropoff_location_hash:{
    postal_code:"61008",
    latitude:"42.204735",
    longitude:"-88.84292499999999",
    line1:"3088 Flora Road",
    city:"Belvidere",
    state:"IL"},
  pickup_time:"2023-03-10 18:00:00",
  user_id:129238,
  virtualize:true,
  estimate_fares:true,
  estimate_fees:true,
  payments_service_payment_method_id:"89394",
  service_type_key:"taxi",
  booking_requirements:nil,
  metadata:nil,
  total_passengers:"1",
  booking_channel_key:"iphone_taxi_magic",
  version:2,
  provider_ids:nil,
  copay_program:nil
}

Estimates::FareRequest.new(params).execute({})
# <Estimates::FareRequest:0x000055c4b91d1c70
# @provider_id=nil,
# @route=nil,
#   @token_params = {
#     :pickup_time => "1678471200",
#     :payment_method_id => "89394",
#     :service_type => "taxi",
#     :total_passengers => "1"
#   },
#   @rc_user_id = nil,
#   @pickup_location = {
#     :city => "Rosemont",
#     :latitude => "41.977584",
#     :line1 => "10000 W O'Hare Ave",
#     :longitude => "-87.90296549999999",
#     :postal_code => "60666",
#     :state => "IL"
#   },
#   @dropoff_location = {
#     :city => "Belvidere",
#     :latitude => "42.204735",
#     :line1 => "3088 Flora Road",
#     :longitude => "-88.84292499999999",
#     :postal_code => "61008",
#     :state => "IL"
#   },
#   @pickup_latitude = nil,
#   @pickup_longitude = nil,
#   @dropoff_latitude = nil,
#   @dropoff_longitude = nil,
#   @pickup_time = "1678471200",
#   @payment_method_id = "89394",
#   @service_type_key = "taxi",
#   @metadata = nil,
#   @booking_requirements = nil,
#   @virtualize = true,
#   @estimate_fares = true,
#   @estimate_fees = true,
#   @booking_channel_key = nil,
#   @total_passengers = "1",
#   @api_version = "v2",
#   @provider_ids = nil,
#   @copay_program = nil,
#   @response = #<Rcclient::Response:0x000055c4b91ceef8 @status=200,
# @response = {
#   "fleets" => [
#     {
#       "fleet" => {
#         "booking_messages" => [],
#         "name" => "Way2Cloud Whiskey",
#         "key" => "way2cloud",
#         "multifleet" => false,
#         "id" => 16,
#         "favorite" => false,
#         "bookable" => true,
#         "dropoff_required" => false,
#         "require_cc" => false,
#         "time_zone_olson" => "America/New_York",
#         "marketing_text" => nil,
#         "phone_number_formatted" => "(202) 555-6677",
#         "estimated_fare" => 222,
#         "estimated_base_fare" => 222,
#         "estimated_rider_fare" => 222,
#         "estimated_fee" => 1.5,
#         "estimate_id" => nil,
#         "estimated_service_fee" => nil,
#         "estimated_curb_credits" => nil,
#         "estimated_fee_breakdown" => {
#           "improvement_surcharge" => 1.0,
#           "state_surcharge" => 0.5 },
#         "bounce_payment" => true,
#         "preauth_enabled" => true,
#         "average_ride_cost" => 40,
#         "tag_line" => nil,
#         "mission_statement" => nil,
#         "provider_note" => nil,
#         "service_level" => "taxi",
#         "resource_link" => {
#           "href" => "https://ride-manager.release.gocurb.com/api/v1/fleets/16",
#           "rel" => "alternate",
#           "type" => "application/json"
#         },
#         "icon_link" => nil,
#         "average_historical_time_to_dispatch" => {
#           "low" => nil,
#           "high" => nil
#         },
#         "average_historical_time_to_pick_up" => {
#           "low" => nil,
#           "high" => nil
#         },
#         "additional_booking_data" => [
#           {
#             "additional_booking_datum" => {
#               "name" => "special_instructions",
#               "required" => false
#             }
#           }
#         ],
#         "cash_channel_bitmask" => 17694992,
#         "cash_only" => false
#       }
#     },
#     {
#       "fleet" => {
#         "booking_messages" => [],
#         "name" => "Chicago W2C Pairing",
#         "key" => "chicago_w2c_pairing",
#         "multifleet" => false,
#         "id" => 61,
#         "favorite" => false,
#         "bookable" => true,
#         "dropoff_required" => false,
#         "require_cc" => false,
#         "time_zone_olson" => "America/Chicago",
#         "marketing_text" => nil,
#         "phone_number_formatted" => " ",
#         "estimated_fare" => 168.16,
#         "estimated_base_fare" => 168.16,
#         "estimated_rider_fare" => 168.16,
#         "estimated_fee" => 1.5,
#         "estimate_id" => nil,
#         "estimated_service_fee" => nil,
#         "estimated_curb_credits" => nil,
#         "estimated_fee_breakdown" => { "improvement_surcharge" => 1.0,
#                                        "state_surcharge" => 0.5 },
#         "bounce_payment" => true,
#         "preauth_enabled" => true,
#         "average_ride_cost" => 25,
#         "tag_line" => nil,
#         "mission_statement" => nil,
#         "provider_note" => nil,
#         "service_level" => "taxi",
#         "resource_link" => { "href" => "https://ride-manager.release.gocurb.com/api/v1/fleets/61",
#                              "rel" => "alternate",
#                              "type" => "application/json" },
#         "icon_link" => nil,
#         "average_historical_time_to_dispatch" => { "low" => nil,
#                                                    "high" => nil },
#         "average_historical_time_to_pick_up" => { "low" => nil,
#                                                   "high" => nil },
#         "additional_booking_data" => [{ "additional_booking_datum" => { "name" => "special_instructions",
#                                                                         "required" => false } }],
#         "cash_channel_bitmask" => 17956864,
#         "cash_only" => false } },
#     {
#       "fleet" => {
#         "booking_messages" => [],
#         "name" => "Flash Taxi with MK ds",
#         "key" => "flashtaxi_mk",
#         "multifleet" => false,
#         "id" => 113,
#         "favorite" => false,
#         "bookable" => true,
#         "dropoff_required" => false,
#         "require_cc" => false,
#         "time_zone_olson" => "America/Chicago",
#         "marketing_text" => nil,
#         "phone_number_formatted" => "(773) 907-0909",
#         "estimated_fare" => 222,
#         "estimated_base_fare" => 222,
#         "estimated_rider_fare" => 222,
#         "estimated_fee" => 1.5,
#         "estimate_id" => nil,
#         "estimated_service_fee" => nil,
#         "estimated_curb_credits" => nil,
#         "estimated_fee_breakdown" => { "improvement_surcharge" => 1.0,
#                                        "state_surcharge" => 0.5 },
#         "bounce_payment" => true,
#         "preauth_enabled" => true,
#         "average_ride_cost" => 25,
#         "tag_line" => nil,
#         "mission_statement" => nil,
#         "provider_note" => nil,
#         "service_level" => "taxi",
#         "resource_link" => { "href" => "https://ride-manager.release.gocurb.com/api/v1/fleets/113",
#                              "rel" => "alternate",
#                              "type" => "application/json" },
#         "icon_link" => nil,
#         "average_historical_time_to_dispatch" => { "low" => nil,
#                                                    "high" => nil },
#         "average_historical_time_to_pick_up" => { "low" => nil,
#                                                   "high" => nil },
#         "additional_booking_data" => [{ "additional_booking_datum" => { "name" => "special_instructions",
#                                                                         "required" => false } }],
#         "cash_channel_bitmask" => 17956864,
#         "cash_only" => false
#       }
#     }
#   ]
# },
#   @modified_response = nil,
#   @message = "OK",
#   @timestamp = 2023 - 03 - 10 18 : 35 : 42.046377874 UTC,
#   @errors = [] >>


