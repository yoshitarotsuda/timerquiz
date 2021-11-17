class Quiz < ApplicationRecord
  belongs_to :user
  # 選択肢用のアソシエーション 記述するときにカラム名にしないように注意
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :quiz_category
  belongs_to :quiz_level

end