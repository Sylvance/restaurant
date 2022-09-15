module Restaurant
  module Entrypoint
    module Order
      class << self
        def create(params)
          req = Restaurant::Type::Request::CreateOrder.new(params: params)
          return false unless req.valid?

          repo = Restaurant::Repository::Order.new(adapter: Restaurant.adapter)
          result = Restaurant::Service::CreateOrder.call(req: req, repo: repo)

          Restaurant::Type::Response::OrderCreate.new(params: result)
        end
      end
    end
  end
end
