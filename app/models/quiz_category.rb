class QuizCategory < ActiveHash::Base
  self.data = [
    { id: 0, date: '---' },
    { id: 1, date: 'IT全般' },
    { id: 2, date: 'Ruby' },
    { id: 3, date: 'Ruby on Rails' },
    { id: 4, date: 'HTML&CSS' },
    { id: 5, date: 'Java' },
    { id: 6, date: 'Git' },
    { id: 7, date: 'SQL' },
    { id: 8, date: 'Command Line' },
    { id: 9, date: 'Java' },
    { id: 10, date: 'JavaScript' },
    { id: 11, date: 'JQuery' },
    { id: 12, date: 'AWS' },
    { id: 13, date: 'Docker' },
    { id: 14, date: 'PHP' },
    { id: 15, date: 'Go' },
    { id: 16, date: 'Youtube' },
    { id: 17, date: 'Twitter' },
    { id: 18, date: 'Qiita' },
    { id: 19, date: 'Line' },
    { id: 20, date: 'その他' }
  ]
  include ActiveHash::Associations
  has_many :quizzes
end