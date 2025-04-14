# frozen_string_literal: true

module RuboCop
  module Cop
    module Fablicop
      # This cop checks for the use of `to_datetime` and issues a warning.
      class ToDatetimeCop < Base
        MSG = 'Avoid using `to_datetime`. Consider using `to_time` or `to_date` instead.'

        def_node_matcher :to_datetime?, <<~PATTERN
          (send _ :to_datetime)
        PATTERN

        def on_send(node)
          add_offense(node, message: MSG) if to_datetime?(node)
        end
      end
    end
  end
end
