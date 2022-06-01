class Question < ApplicationRecord
    # has_manyで１対多の繋がりがあることを示す
    has_many :answers, dependent: :destroy
    
    # presence: true で未入力チェックができる
    validates :title, presence: true
    validates :name, presence: true
    # length: {} で文字数を指定できる
    validates :content, presence: true, length: { minimum: 5 }
end
