# frozen_string_literal: true

module RuboCop
  module Cop
    module Fablicop
      class CurrentUser < Base
        MSG = 'Check if @current_user exists.'

        def on_ivar(node)
          return unless node.source == '@current_user'

          add_offense(node)
        end
      end
    end
  end
end
