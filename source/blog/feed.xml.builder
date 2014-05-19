xml.instruct!
xml.feed "xmlns" => "http://www.w3.org/2005/Atom" do
  xml.title "Portland Code School News and Announcements"
  xml.subtitle "Stay up to date on the latest happenings at Portland Code School! Check back often for student profiles, new class announcements, and tech industry content."
  xml.id "http://portlandcodeschool.com/blog/"
  xml.link "href" => "http://portlandcodeschool.com/blog/"
  xml.link "href" => "http://portlandcodeschool.com/feed.xml", "rel" => "self"
  xml.updated blog.articles.first.date.to_time.iso8601
  xml.author { xml.name "Portland Code School" }

  blog.articles[0..5].each do |article|
    xml.entry do
      xml.title article.title
      xml.link "rel" => "alternate", "href" => article.url
      xml.id article.url
      xml.published article.date.to_time.iso8601
      xml.updated article.date.to_time.iso8601
      xml.author { xml.name "Portland Code School" }
      # xml.summary article.summary, "type" => "html"
      xml.content article.body, "type" => "html"
    end
  end
end
