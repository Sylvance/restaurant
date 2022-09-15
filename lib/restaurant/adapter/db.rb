module Restaurant
  module Adapter
    class Db
      attr_accessor :db

      def initialize(db:)
        @db = db
      end

      def save(_key, _value)
        puts "Saving into db."
      end

      def delete(_key)
        puts "Deleting from db."
      end

      def fetch(_key)
        puts "Fetching from db."
      end

      def clear(_key)
        puts "Clearing db."
      end
    end
  end
end
