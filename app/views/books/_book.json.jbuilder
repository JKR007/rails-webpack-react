json.extract! book, :id, :name, :author, :description, :published_date, :genre, :quantity, :created_at, :updated_at
json.url book_url(book, format: :json)
