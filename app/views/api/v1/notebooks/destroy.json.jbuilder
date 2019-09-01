json.status_code 204
json.status 'success'
json.message 'The book '+@notebook.name.to_s+' was deleted successfully'
json.data @notebook

