module ParaBlog
  class Post < ActiveRecord::Base
    acts_as_taggable

    extend FriendlyId
    friendly_id :title, use: [:slugged, :history, :finders]

    has_many :comments, class_name: 'ParaBlog::Comment', dependent: :destroy
    accepts_nested_attributes_for :comments, reject_if: :all_blank

    belongs_to :component, class_name: 'Para::Component::Base'

    scope :active, -> { where(active: true) }
    scope :ordered, -> { order(published_on: :desc) }

    def should_generate_new_friendly_id?
      slug.blank? || title_changed?
    end
  end
end
