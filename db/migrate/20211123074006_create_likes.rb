class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.integer    :like_id,            null: false
      t.references :user,               null: false, foreign_key: true # 外部キー設定
      t.references :quiz,               null: false, foreign_key: true # 外部キー設定
      t.timestamps
    end
  end
end
