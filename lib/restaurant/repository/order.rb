module Restaurant
  module Repository
    class Order
      attr_accessor :adapter
      def initialize(adapter:)
        @adapter = adapter
      end

      def save(order:)
        entity = Restaurant::Entity::Order.new(
          id: order.id, menu_choices: order.menu_choices
        )

        if adapter.save(entity.id, entity.to_hash)
          result_for(entity, true)
        else
          result_for(entity, false)
        end
      end

      private

      def result_for(entity, type)
        {
          success: type,
          body: entity
        }
      end
    end
  end
end
