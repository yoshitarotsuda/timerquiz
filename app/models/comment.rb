class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :quiz
  with_options presence: true do
    validates :user_id
    validates :quiz_id
    validates :comment
  end
end
