class Quiz < ApplicationRecord
  belongs_to :user
  has_many :comments
  # 選択肢用のアソシエーション 記述するときにカラム名にしないように注意
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :quiz_category
  belongs_to :quiz_level

  with_options presence: true do #with_options オプションの記述をまとめるのに使える、if使用時の記述パターンに注意
    validates :quiz_name
    validates :quiz_text
    validates :quiz_answer
    validates :quiz_category_id, numericality: { other_than: 0, message: "を選択してください"} 
    validates :quiz_level_id, numericality: { other_than: 0, message: "を選択してください"} 
  end

end