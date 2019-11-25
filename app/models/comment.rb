class Comment < ApplicationRecord
  validates :saying, presence: true, length: { maximum: 100, minimum: 2}
end
