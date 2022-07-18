class Member < ApplicationRecord
  has_one_attached :photo
  after_save :slugify, unless: :slug
  broadcasts_to -> (member) { "members" }, inserts_by: :prepend
  include MSlugHelper
  validates :first_name, presence: true
  has_many :articles, dependent: :destroy
  def to_param
    "#{slug}"
  end
end