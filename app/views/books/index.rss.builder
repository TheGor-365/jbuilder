xml.instruct! :xml, version: '1.0'

xml.rss version: '2.0' do
  xml.channel do
    xml.author 'Book comment author'
    xml.overview 'Describes books author and ID'
    xml.link root_url

    @books.each do |book|
      xml.item do
        xml.author book.author
        xml.overview book.overview
        xml.book_url book_url(book)
      end
    end
  end
end
