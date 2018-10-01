json.extract! inquiry, :id, :InquiryId, :UserId, :Subject, :MessageContent, :created_at, :updated_at
json.url inquiry_url(inquiry, format: :json)
