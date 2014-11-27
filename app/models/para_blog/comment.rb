module ParaBlog
  class Comment < ActiveRecord::Base
    belongs_to :post, class_name: 'ParaBlog::Post'

    scope :active, -> { where(active: true) }
    scope :inactive, -> { where.not(active: true) }
  end
end
