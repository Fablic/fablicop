# frozen_string_literal: true
require 'spec_helper'

RSpec.describe RuboCop::Cop::Fablicop::UnexpectedIdentifiers, :config do
  let(:config) { RuboCop::Config.new }

  it 'registers an offense when using `@current_user`' do
    expect_offense(<<~RUBY)
      @current_user
      ^^^^^^^^^^^^^ Check if @current_user exists.
    RUBY
  end

  it 'does not register an offense when using `@some_ivar`' do
    expect_no_offenses(<<~RUBY)
      @some_ivar
    RUBY
  end
end
