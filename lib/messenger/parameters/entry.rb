module Messenger
  module Parameters
    class Entry
      attr_accessor :id, :time, :messagings

      def initialize(id:, time:, messaging: nil)
        @id         = id
        @time       = time
        @messagings = build_messagings(messaging) if messaging.present?
      end

      def build_messagings(messagings)
        messagings.map { |messaging| Messaging.new(messaging.transform_keys(&:to_sym)) }
      end
    end
  end
end
