
class Postsub < ApplicationRecord
  validates :sub, :post, presence: true

  belongs_to :sub

  belongs_to :post,
             class_name: :Post,
             foreign_key: :post_id
end
