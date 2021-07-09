# frozen_string_literal: true

module RuboCop
  module Cop
    module Fablicop
      class UnexpectedIdentifiers < Base
        MSG = 'Check if @current_user exists.'

        def on_ivar(node)
          identifiers = cop_config['Identifiers']
          return unless identifiers && identifiers.is_a?(Array) && cop_config['Identifiers'].include?(node.source)

          add_offense(node)
        end
      end
    end
  end
end
