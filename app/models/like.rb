class Like < ApplicationRecord
  belongs_to :user
  belongs_to :quiz

  with_options presence: true do
    validates :user_id
    validates :quiz_id
    validates :like_id
  end
  validates_uniquness_of :quiz_id, scope: :user_id
end
