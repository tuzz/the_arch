require "spec_helper"

describe TheArch do

  before(:all) do
    stub_fixture("crag_update")
    stub_fixture("route_update")
    stub_fixture("sector_update")
  end

  describe ".crags" do
    it "returns an array of crag data" do
      results = subject.crags

      results.size.should == 4
      results.first.crag_nearest_town.should == "Bermondsey"
    end
  end

  describe ".sectors" do
    it "returns an array of sector data" do
      results = subject.sectors

      results.size.should == 14
      results.first.sector_name.should == "Spotty Circuit V0"
    end
  end

  describe ".routes" do
    it "returns an array of route data" do
      results = subject.routes

      results.size.should == 446
      results.first.tech_grade.should == "Middle"
    end
  end

end
