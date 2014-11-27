module ParaBlog
  class Post < ActiveRecord::Base
    acts_as_taggable

    has_many :comments, class_name: 'ParaBlog::Comment', dependent: :destroy
    accepts_nested_attributes_for :comments, reject_if: :all_blank

    belongs_to :component, class_name: 'Para::Component::Base'
  end
end
