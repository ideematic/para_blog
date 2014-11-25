module ParaBlog
  class Post < ActiveRecord::Base
    belongs_to :component
  end
end
