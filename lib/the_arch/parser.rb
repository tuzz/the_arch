module TheArch::Parser
  def self.parse(xml)
    document = Nokogiri::XML.parse(xml)
    data = document.xpath("/plist/dict/dict")

    data.map do |node|
      strings = node.children.map(&:text)
      pairs = strings.each_slice(2).to_a

      Hashie::Mash.new(Hash[pairs])
    end
  end
end
