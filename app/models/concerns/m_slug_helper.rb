module MSlugHelper
  def slug_helper(slug)
    Member.select { |m| m.slug == slug}.empty?
  end
  def slugify
    future_slug = "#{self.first_name}-#{self.last_name}".parameterize
    if slug_helper(future_slug)
      self.slug = future_slug
      self.save
    else
      self.slug = "#{future_slug}-#{self.id}"
      self.save
    end
  end
end