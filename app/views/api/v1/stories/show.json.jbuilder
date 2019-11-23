json.extract! @story, :id, :name, :text
json.comments do
  json.array! @story.comments do |comment|
    json.extract! comment, :id, :name, :content
    json.data comment.created_at.strftime("%m/%d/%y")
  end
end
