module Para
  module Component
    class Post < Para::Component::Base
      register :post, self

      has_many :posts, class_name: 'Para::Post', autosave: true,
      inverse_of: :component, foreign_key: :component_id,
      dependent: :destroy
    end
  end
end
