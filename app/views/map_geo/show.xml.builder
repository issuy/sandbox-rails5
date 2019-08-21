xml.instruct!
xml.feed("xmlns" => "http://www.w3.org/2005/Atom", "xmlns:georss" => "http://www.georss.org/georss") do
  xml.title("Sample geodata")
  xml.subtitle("Sample")
  xml.link("href" => "http://example.org/")
  xml.updated("2019-08-15T00:00:00Z")
  xml.author do
    xml.name("Issuy")
    xml.email("akito.ew@gmail.com")
  end
  @map_entries.each do |entry|
    @entry = entry
    xml.entry do
      xml.title(@entry[:title])
      xml.link("rel" => "alternate", "type" => "text/html", "href" => "http://example.org")
      xml.id("")
      xml.published("2019-08-15T00:00:00Z")
      xml.updated("2019-08-15T00:00:00Z")
      xml.content(ERB::Util.html_escape(render('map_content')), "type" => "html")
      xml.author do
        xml.name("hoge")
        xml.uri("")
      end
      xml.georss(:point, "#{@entry[:latitude]} #{@entry[:longtitude]}")
    end
  end
end
