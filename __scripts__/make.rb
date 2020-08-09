#!/usr/bin/env ruby

class KataMaker
  attr_accessor :method_name, :kata_url

  def initialize(args)
    @method_name, @kata_url = args

    validate_args
  end


  def validate_args
    if @method_name.nil?
      puts "Method name is required"
      exit
    end

    if @kata_url.nil?
      puts "Kata URL is required"
      exit
    end
  end

  def run
    kata_dir = File.join(__dir__, "..", @method_name)
    solution_filename = "#{kata_dir}/#{method_name}.rb"
    spec_filename = "#{kata_dir}/#{method_name}_spec.rb"
    readme_filename = "#{kata_dir}/readme.md"

    # Create directory
    Dir.mkdir(kata_dir) unless Dir.exists?(kata_dir)

    # Create solution file
    File.open(solution_filename, "w+") do |f|
      f.write("def #{method_name}")
      f.write("\n\n")
      f.write("end")
    end

    # Create spec file
    File.open(spec_filename, "w+") do |f|
      f.write("describe :#{method_name} do")
      f.write("\n\n")
      f.write("end")
    end

    # Create README
    File.open(readme_filename, "w+") do |f|
      f.write(@kata_url)
    end
  end
end

KataMaker.new(ARGV).run
