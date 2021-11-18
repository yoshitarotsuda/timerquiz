class QuizLevel < ActiveHash::Base
  self.data = [
    { id: 0, date: '---' },
    { id: 1, date: '初心' },
    { id: 2, date: '初級' },
    { id: 3, date: '中級' },
    { id: 4, date: '上級' },
    { id: 5, date: '専門' }
  ]
  include ActiveHash::Associations
  has_many :quizzes
end