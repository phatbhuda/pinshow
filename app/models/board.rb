class Board < ApplicationRecord
  validates :title, presence: true
  validates :url, presence: true, length: {minimum: 10}
end
