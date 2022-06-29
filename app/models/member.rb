class Member < ApplicationRecord
  has_one_attached :photo
  after_save :slugify, unless: :slug
  include MSlugHelper
  acts_as_taggable_on :roles

  def to_param
    "#{slug}"
  end
end