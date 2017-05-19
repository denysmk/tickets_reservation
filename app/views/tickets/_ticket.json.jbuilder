json.extract! ticket, :id, :content, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
