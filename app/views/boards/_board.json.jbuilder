json.extract! board, :id, :name, :email, :height, :width, :mine, :created_at, :updated_at
json.url board_url(board, format: :json)
