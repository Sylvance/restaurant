module Restaurant
  module Type
    module Request
      CreateOrder = Struct.new(:params, keyword_init: true) do
        def valid?
          return false unless params[:id].is_a? Integer
          return false unless params[:menu_choices].is_a? Array

          true
        end

        def id
          params[:id]
        end

        def menu_choices
          params[:menu_choices]
        end
      end
    end
  end
end
