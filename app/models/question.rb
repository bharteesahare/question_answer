class Question < ApplicationRecord
  has_rich_text :body
  has_many :answers, dependent: :destroy
end
