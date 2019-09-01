json.status_code 201
json.status 'success'
json.data do
  json.book do
    json.name @notebook.name
    json.isbn @notebook.isbn
    json.authors @notebook.authors
    json.number_of_pages @notebook.number_of_pages
    json.publisher @notebook.publisher
    json.country @notebook.country
    json.release_date @notebook.release_date
  end
end
