# frozen_string_literal: true

Dir["#{File.dirname(__FILE__)}/restaurant/**/*.rb"].sort.each { |f| require(f) }

module Restaurant
  class Error < StandardError; end

  class << self
    # Create order for a restaurant
    # @params [Hash] params parameters for order creation
    # @option params [Integer] :restaurant_id id for the restaurant
    # @option params [Array<Hash>] :menu_choices array of menu choices hash
    #   @option menu_choice [Integer] :menu_id the choice id on menu
    #   @option menu_choice [Integer] :amount the amount of choice to be served
    #   @option menu_choice [String] :amount_type the type of the amount served
    #
    # @return [Restaurant::Type::Response::CreateOrder] The response from create the order
    def create_order(params:)
      Restaurant::Entrypoint::Order.create(params)
    end

    # The persistence adapter
    #
    # @return [Restaurant::Adapter::DB]
    def adapter
      @adapter ||= Restaurant::Adapter::InMemory.new
    end
  end
end
