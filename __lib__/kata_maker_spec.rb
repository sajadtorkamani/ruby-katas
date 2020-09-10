# frozen_string_literal: true

require 'tmpdir'
require_relative 'kata_maker'

describe KataMaker do
  describe '#initialize' do
    it 'sets `method_name` to first argument' do
      expect(described_class.new(['foo']).method_name).to eq 'foo'
    end

    it 'sets `kata_dir` to a directory with the same name as `method_name` inside the present working directory' do
      expect(described_class.new(['bar']).kata_dir).to eq "#{Dir.pwd}/bar"
    end

    it 'exits and prints error to stdout if no method name is provided as first argument' do
      expect { described_class.new([]) }
        .to raise_error(SystemExit).and output("Method name is required\n").to_stdout
    end
  end

  describe '#make' do
    it 'creates directory with same name as provided method name' do
      Dir.mktmpdir do |dir|
        Dir.chdir dir do
          described_class.new(['foo']).make

          expect(File.directory?("#{dir}/foo")).to be true
        end
      end
    end

    it 'creates solution file with the name {method_name}.rb' do
      Dir.mktmpdir do |dir|
        Dir.chdir dir do
          described_class.new(['foo']).make

          expect(File.exist?("#{dir}/foo/foo.rb")).to be true
        end
      end
    end

    it 'creates spec file with the name {method_name}_spec.rb' do
      Dir.mktmpdir do |dir|
        Dir.chdir dir do
          described_class.new(['foo']).make

          expect(File.exist?("#{dir}/foo/foo_spec.rb")).to be true
        end
      end
    end

    it 'prints success message when done' do
      Dir.mktmpdir do |dir|
        Dir.chdir dir do
          expect { described_class.new(['foo']).make }.to output("Created new foo/ directory\n").to_stdout
        end
      end
    end
  end
end
