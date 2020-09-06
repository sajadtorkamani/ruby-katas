#!/usr/bin/env ruby
# frozen_string_literal: true

class KataMaker
  attr_accessor :method_name, :kata_dir

  def initialize(args)
    @method_name = args.first
    @kata_dir = File.join(__dir__, '..', @method_name)

    validate_args
  end

  def validate_args
    if @method_name.nil? # rubocop:disable Style/GuardClause
      puts 'Method name is required'
      exit
    end
  end

  def make
    create_directory
    create_solution
    create_spec
  end

  def create_directory
    Dir.mkdir(kata_dir) unless Dir.exist?(kata_dir)
  end

  def create_solution
    filename = "#{kata_dir}/#{method_name}.rb"

    File.open(filename, 'w+') do |f|
      f.write("def #{method_name}")
      f.write("\n\n")
      f.write('end')
    end
  end

  def create_spec
    filename = "#{kata_dir}/#{method_name}_spec.rb"

    File.open(filename, 'w+') do |f|
      f.write("require_relative '#{method_name}'")
      f.write("\n\n")
      f.write("describe '#{method_name}' do")
      f.write("\n\n")
      f.write('end')
    end
  end
end

KataMaker.new(ARGV).make
