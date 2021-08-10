# frozen_string_literal: true

RSpec.describe Fablicop::CLI do
  describe '.start' do
    context 'when unknown command is passed' do
      it 'shows help' do
        expect { described_class.start(%w[unknown]) }.to output(<<~OUTPUT).to_stdout.and raise_error(SystemExit)
          Could not find command unknown.
          fablicop commands:
            init - Setup .rubocop.yml
        OUTPUT
      end
    end

    context 'when init is passed' do
      let(:content) { <<~YAML }
        inherit_gem:
          fablicop:
            - "config/.base_rubocop.yml"
      YAML
      around do |example|
        Dir.mktmpdir do |dir|
          Dir.chdir(dir) do
            example.run
          end
        end
      end

      it 'creates .rubocop.yml' do
        expect { described_class.start(%w[init]) }
          .to output(<<~OUTPUT).to_stdout.and change { Pathname('.rubocop.yml').file? }.from(false).to(true).and raise_error(SystemExit)
          create .rubocop.yml
        OUTPUT
      end

      it 'overwrites .rubocop.yml' do
        Pathname('.rubocop.yml').write('---')
        expect { described_class.start(%w[init]) }
          .to output(<<~OUTPUT).to_stdout.and change { Pathname('.rubocop.yml').read }.from('---').to(content).and raise_error(SystemExit)
          overwrite .rubocop.yml
        OUTPUT
      end
    end
  end
end
