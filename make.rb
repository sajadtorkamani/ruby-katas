#!/usr/bin/env ruby
# frozen_string_literal: true

class KataMaker
  attr_accessor :method_name, :kata_dir

  def initialize(args)
    @method_name = args.first
    validate_args
    @kata_dir = File.join(Dir.pwd, 'src', @method_name)
  end

  def make
    create_directory
    create_solution
    create_spec
    print_success_message
  end

  private

  def validate_args
    if @method_name.nil? # rubocop:disable Style/GuardClause
      puts 'Method name is required'
      exit 1
    end
  end

  def create_directory
    Dir.mkdir(kata_dir) unless Dir.exist?(kata_dir)
  end

  def create_solution
    filename = "#{kata_dir}/#{method_name}.rb"

    File.open(filename, 'w+') do |f|
      f.write('# frozen_string_literal: true')
      f.write("\n\n")
      f.write("def #{method_name}")
      f.write("\n\n")
      f.write('end')
      f.write("\n")
    end
  end

  def create_spec
    filename = "#{kata_dir}/#{method_name}_spec.rb"

    File.open(filename, 'w+') do |f|
      f.write('# frozen_string_literal: true')
      f.write("\n\n")
      f.write("require_relative '#{method_name}'")
      f.write("\n\n")
      f.write("describe '#{method_name}' do")
      f.write("\n\n")
      f.write('end')
      f.write("\n")
    end
  end

  def print_success_message
    puts "Created new #{method_name}/ directory"
  end
end

KataMaker.new(ARGV).make
