class Post < ApplicationRecord
  has_many :comments
  has_many_attached :photos

  validates :titre, presence: true
  validates :contenu, presence: true
  validates :titre, length: { maximum: 255 }
  validates :contenu, length: { maximum: 100000 }

  extend FriendlyId
  friendly_id :slug, use: :slugged

  def slug
    titre.to_s
  end
end
