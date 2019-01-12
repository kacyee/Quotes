class Comment < ApplicationRecord
  belongs_to :quote
  validates :commenter, presence: true,
                      length: { minimum: 5}
    validates :body, presence: true,
                      length: { minimum: 5}
end
