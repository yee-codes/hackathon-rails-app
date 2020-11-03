class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { maximum: 100 }
  has_one_attached :picture         
end
