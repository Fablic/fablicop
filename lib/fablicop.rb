# frozen_string_literal: true

require 'rubocop'
require_relative "fablicop/cli"
require_relative 'fablicop/inject'

module Fablicop
  class Error < StandardError; end
  PROJECT_ROOT   = Pathname.new(__dir__).parent.expand_path.freeze
  CONFIG_DEFAULT = PROJECT_ROOT.join('.rubocop.yml').freeze
  CONFIG         = YAML.safe_load(CONFIG_DEFAULT.read).freeze

  private_constant(:CONFIG_DEFAULT, :PROJECT_ROOT)
end

Fablicop::Inject.defaults!

require_relative 'rubocop/cop/cops'

