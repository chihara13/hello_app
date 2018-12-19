json.extract! book, :id, :title, :jancode, :author, :release, :price, :genre, :publisher, :created_at, :updated_at
json.url book_url(book, format: :json)
