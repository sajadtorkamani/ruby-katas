#!/usr/bin/env ruby
# frozen_string_literal: true

class KataMaker
  attr_accessor :method_name, :kata_url, :kata_dir

  def initialize(args)
    @method_name, @kata_url = args
    @kata_dir = File.join(__dir__, '..', @method_name)

    validate_args
  end

  # rubocop:disable Style/GuardClause
  def validate_args
    if @method_name.nil?
      puts 'Method name is required'
      exit
    end

    if @kata_url.nil?
      puts 'Kata URL is required'
      exit
    end
  end
  # rubocop:enable Style/GuardClause

  def make
    create_directory
    create_solution
    create_spec
    create_readme
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

  def create_readme
    filename = "#{kata_dir}/readme.md"

    File.open(filename, 'w+') do |f|
      f.write(@kata_url)
    end
  end
end

KataMaker.new(ARGV).make
