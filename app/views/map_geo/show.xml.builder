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
  xml.entry do
    xml.title("hoge")
    xml.link("rel" => "alternate", "type" => "text/html", "href" => "http://example.org")
    xml.id("")
    xml.published("2019-08-15T00:00:00Z")
    xml.updated("2019-08-15T00:00:00Z")
    xml.content("hoge", "type" => "html")
    xml.author do
      xml.name("hoge")
      xml.uri("")
    end
    xml.georss(:point, "34.074381 -118.259367")
  end
end
