class Book < ActiveRecord::Base
  # attr_accessor :slug
  # extend FriendlyId
  #   friendly_id :name, use: :slugged
  extend FriendlyId
  friendly_id :slug_candidates, use: [:slugged, :finders, :history]

    def slug_candidates
      [
        :title,
        [:title, :author]
      ]
    end

    def should_generate_new_friendly_id?
      slug.blank? || title_changed? || author_changed?
    end

  def self.search(search)
    if search
      where('title LIKE ?', "%#{search}%")
    else
      all
    end
  end

end
