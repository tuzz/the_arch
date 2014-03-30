## The Arch

A Ruby client for The Arch Climbing Wall API. This is the same API that backs the iOS application.

## Crags

```ruby
TheArch.crags.first
#=> {
  "area_id"                => "69",
  "area_name"              => "Biscuit Factory",
  "crag_access_info"       => "",
  "crag_general_info"      => "",
  "crag_gridref"           => "",
  "crag_guide_book"        => "Circuit List",
  "crag_id"                => "265",
  "crag_info_short"        => "A set of 30 problems using the same coloured holds, each in their own grade band.",
  "crag_is_favourite"      => "",
  "crag_latitude"          => "51.4939384460449",
  "crag_longitude"         => "-0.0626349449157715",
  "crag_map_id"            => "0",
  "crag_map_zoom"          => "15",
  "crag_name"              => "Circuit Problems",
  "crag_nearest_town"      => "Bermondsey",
  "crag_parking_info"      => "",
  "crag_parking_latitude"  => "51.4944763183594",
  "crag_parking_longitude" => "-0.0621628761291504",
  "crag_sector_map_name"   => "",
  "crag_sort_order"        => "10",
  "crag_type"              => "0",
  "date_modified"          => "2013-03-03",
  "is_enabled"             => "",
  "tap_rect_in_parent_map" => "",
  "version_number"         => "1.0",
  "weather_provider_code"  => "",
  "weather_provider_name"  => ""
}
```

## Sectors

```ruby
TheArch.sectors.first
#=> {
  "crag_id"                => "265",
  "date_modified"          => "2014-03-04",
  "is_enabled"             => "",
  "map_id"                 => "0",
  "sector_id"              => "1006",
  "sector_info"            => "30 Circuit problems at V0",
  "sector_info_short"      => "Set Tuesday 4th March by Scott Bishop and Jethro Whaley ",
  "sector_map_rect_h"      => "0",
  "sector_map_rect_w"      => "0",
  "sector_map_rect_x"      => "0",
  "sector_map_rect_y"      => "0",
  "sector_name"            => "Spotty Circuit V0",
  "sort_order"             => "5",
  "tap_rect_in_parent_map" => "0,0,0,0",
  "topo_name"              => "18725d4f-3b53-4940-9b75-dbf9ca40b50e.jpg",
  "topo_type_id"           => "1",
  "version_number"         => "1.0"
}
```

## Routes

```ruby
TheArch.routes.first
#=> {
  "area_id"           => "69",
  "crag_id"           => "265",
  "date_modified"     => "2014-03-14",
  "equipper_date"     => "",
  "equipper_name"     => "",
  "first_ascent_date" => "",
  "first_ascent_name" => "",
  "grade_bucket_id"   => "0",
  "grade_name"        => "Boulder",
  "grade_type_id"     => "8",
  "is_enabled"        => "",
  "rating_name"       => "0",
  "route_id"          => "4264",
  "route_info"        => "",
  "route_length"      => "",
  "route_name"        => "Problem 1",
  "route_type"        => "Indoor Wall",
  "route_type_id"     => "4",
  "sector_id"         => "752",
  "sort_order"        => "1",
  "start_x"           => "358",
  "start_y"           => "377",
  "tech_grade"        => "Middle",
  "version_number"    => "1.0"
}
```

## Note

You can access attributes by simply calling methods:

```ruby
crag.area_name
#=> "Biscuit Factory"

sector.sector_name
#=> "Spotty Circuit V0"

route.tech_grade
#=> "Middle"
```

## Background

The API and these methods were discovered by reverse engineering the iOS application. I used [Charles](http://www.charlesproxy.com/) to intercept the HTTPS traffic from my phone and Nokogiri to parse the XML.

## Improvements

At present, this library provides a relatively thin wrapper for the API. I plan on implementing first-class objects with type coercion and methods to retrieve images, etc.

Twitter: [@cpatuzzo](https://twitter.com/cpatuzzo)
