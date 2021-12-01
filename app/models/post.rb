class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  # is_impressionable
  def should_generate_new_friendly_id?
   title_changed? || super
  end
end
