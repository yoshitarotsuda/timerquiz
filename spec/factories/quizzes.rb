FactoryBot.define do
  factory :quiz do
    quiz_name        {'クイズ'}
    quiz_category_id {1}
    quiz_level_id    {1}
    quiz_text        {'問題'}
    quiz_answer      {'解答'}
    quiz_sample      {'例文'}
    association :user
  end
end