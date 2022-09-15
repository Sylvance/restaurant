module Restaurant
  module Adapter
    class InMemory < Db
      def initialize
        super(db: {})
      end

      def save(key, value)
        super
        db[key] = value
        true
      rescue StandardError
        false
      end

      def delete(key)
        super
        db.delete(key)
        true
      rescue StandardError
        false
      end

      def fetch(key)
        super
        db.fetch(key)
        true
      rescue StandardError
        false
      end

      def clear(key)
        super
        db.clear
        true
      rescue StandardError
        false
      end
    end
  end
end
