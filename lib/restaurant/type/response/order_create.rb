module Restaurant
  module Type
    module Response
      OrderCreate = Struct.new(:params, keyword_init: true) do
        def valid?
          return false unless params[:success].is_a? Boolean
          return false unless params[:body].is_a? Restaurant::Entity::Order

          true
        end

        def success?
          params[:success]
        end

        def body
          params[:body]
        end
      end
    end
  end
end
