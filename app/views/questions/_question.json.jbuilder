json.extract! question, :id, :question, :subject, :topic, :grade, :type_of_question, :image, :school, :owner, :user_id, :created_at, :updated_at
json.url question_url(question, format: :json)