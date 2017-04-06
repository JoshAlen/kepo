json.extract! post_comment, :id, :nickname, :content, :created_at, :updated_at
json.url post_comment_url(post_comment, format: :json)
