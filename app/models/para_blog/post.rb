module ParaBlog
  class Post < ActiveRecord::Base
    extend FriendlyId
    friendly_id :slug_candidates, use: [:slugged, :history]

    def slug_candidates
      [
        [:id, :title]
      ]
    end
  end
end
