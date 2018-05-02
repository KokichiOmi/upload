class Blog < ApplicationRecord
  validates :title, presence: true, length: { in: 1..20 }
  validates :content, presence: true, length: { in: 1..140 }
end