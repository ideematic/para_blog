module ParaBlog
  class Post < ActiveRecord::Base
    belongs_to :component, class_name: 'Para::Component::Base'
  end
end
