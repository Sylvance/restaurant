module Restaurant
  module Entity
    class Order
      attr_accessor :id, :menu_choices

      def initialize(id:, menu_choices:)
        @id = "order-#{id}"
        @menu_choices = menu_choices
      end

      def to_hash
        {
            id: id,
            menu_choices: menu_choices
        }
      end
    end
  end
end
