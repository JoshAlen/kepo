json.extract! post, :id, :nickname, :content, :followerCount, :reportCount, :created_at, :updated_at
json.url post_url(post, format: :json)
