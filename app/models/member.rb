class Member < ApplicationRecord
  has_one_attached :photo
  after_save :slugify, unless: :slug
  include MSlugHelper

  def to_param
    "#{slug}"
  end
end
