module TheArch
  UUID = "24928f42-59dd-4e3e-bf10-695f238c2c7a"
  API = "http://thesendtopos.co.uk/appsupport/#{UUID}/"

  def crags
    @crags ||= get("crag_update")
  end

  def sectors
    @sectors ||= get("sector_update")
  end

  def routes
    @routes ||= get("route_update")
  end

  private
  def get(method)
    url = "#{API}#{method}.ashx"
    xml = Net::HTTP.get(URI(url))

    Parser.parse(xml)
  end

  extend self
end
