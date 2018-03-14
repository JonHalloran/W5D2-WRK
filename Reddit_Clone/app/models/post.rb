class Post < ApplicationRecord
  validates :title, :author, presence: true

  has_many :post_subs,
           class_name: :Postsub,
           foreign_key: :post_id

  has_many :subs,
           through: :post_subs,
           source: :sub

  belongs_to :author,
             class_name: :User,
             foreign_key: :user_id
end
