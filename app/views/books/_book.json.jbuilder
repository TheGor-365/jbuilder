# json.extract! book, :id, :author, :overview, :created_at, :updated_at
# json.url book_url(book, format: :json)

# unless book.author == 'Meri Murazik'
#   json.extract! book, :id, :author, :overview
#   json.url book_url(book, format: :json)
#
#   if book.id == 3
#     json.extract! book, :created_at
#   end
#
#   if book.author == 'Brady Stanton Ret.'
#     json.author book.author.upcase
#     json.created_at time_ago_in_words(book.created_at)
#   end
#
#   json.set! :title, 'War and Peace'
#
#   additionally = { genre: 'Novel' }
#
#   json.merge! additionally
#
# end

json.book_author do
  json.author book.author
end

# json.array! books, :id
