json.array!(@parents) do |parent|
  json.extract! parent, :id, :child_name, :name, :email, :teacher_id
  json.url parent_url(parent, format: :json)
end
