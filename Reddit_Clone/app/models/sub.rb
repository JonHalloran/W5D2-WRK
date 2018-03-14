class Sub < ApplicationRecord
  validates :title, :description, :moderator, presence: true

  belongs_to :moderator,
             class_name: :User,
             foreign_key: :user_id

  has_many :post_subs,
           class_name: :Postsub,
           foreign_key: :sub_id

  has_many :posts,
           through: :post_subs,
           source: :post
end
