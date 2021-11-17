class CreateQuizzes < ActiveRecord::Migration[6.0]
  def change
    create_table :quizzes do |t|
      t.string     :quiz_name,          null: false
      t.integer    :quiz_category_id,   null: false
      t.integer    :quiz_level_id,      null: false
      t.text       :quiz_text,          null: false
      t.text       :quiz_answer,        null: false
      t.text       :quiz_sample
      t.references :user,               null: false, foreign_key: true # 外部キー設定
      t.timestamps
    end
  end
end

# 外部キーのカラムの追加にreference型を使うメリット
# userではなくuser_idというカラム名を作成してくれる
# インデックスを自動で貼ってくれる
# 注)外部キー制約はreferenceだけでは付かないことに気を付ける