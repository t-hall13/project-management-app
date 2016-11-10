json.extract! user_artifact, :id, :user_id, :artifact_id, :created_at, :updated_at
json.url user_artifact_url(user_artifact, format: :json)