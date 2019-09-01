json.status_code 200
json.status 'success'
json.data @notebooks.each do |notebook|
  json.name notebook.name
  json.isbn notebook.isbn
  json.authors notebook.authors
  json.numberofpages notebook.number_of_pages
  json.publisher notebook.publisher
  json.country notebook.country
  json.release_date notebook.release_date
end
