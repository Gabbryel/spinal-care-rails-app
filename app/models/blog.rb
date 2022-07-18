class Blog < ApplicationRecord
  belongs_to :user
  belongs_to :member
  has_rich_text :content
end
