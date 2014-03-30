require "rspec"
require "fakeweb"
require "the_arch"

FakeWeb.allow_net_connect = false

def stub_fixture(fixture)
  url = "#{TheArch::API}#{fixture}.ashx"
  xml = File.read("spec/fixtures/#{fixture}.xml")

  FakeWeb.register_uri(:get, url, body: xml)
end

