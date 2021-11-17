class DeliveryCharge < ActiveHash::Base
  self.data = [
    { id: 0, date: '---' },
    { id: 1, date: '初心者' },
    { id: 2, date: '初級者' },
    { id: 3, date: '中級者' },
    { id: 4, date: '上級者' },
    { id: 5, date: '専門家' }
  ]
  include ActiveHash::Associations
  has_many :quizzes
end