module ParaBlog
  class Post < ActiveRecord::Base
    acts_as_taggable
    belongs_to :component, class_name: 'Para::Component::Base'
  end
end
