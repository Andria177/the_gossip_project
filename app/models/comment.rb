class Comment < ApplicationRecord
  belongs_to :gossip, optional: true
  belongs_to :commentable, polymorphic: true, optional: true
  belongs_to :user
  has_many :likes
  has_many:comment, as :commentable
end
