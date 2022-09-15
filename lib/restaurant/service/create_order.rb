module Restaurant
  module Service
    class CreateOrder
      attr_accessor :req, :repo

      def self.call(req:, repo:)
        new(req: req, repo: repo).call
      end

      def initialize(req:, repo:)
        @req = req
        @repo = repo
      end

      def call
        repo.save(order: req)
      end
    end
  end
end
