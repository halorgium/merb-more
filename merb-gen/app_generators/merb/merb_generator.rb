require "merb-gen/helpers"
require "merb-gen/base"

class MerbGenerator < Merb::GeneratorBase
  
  def initialize(args, runtime_options = {})
    @base = File.dirname(__FILE__)
    @name = args.first
    super
    @destination_root = @name
  end
  
  protected
  def banner
    <<-EOS.split("\n").map{|x| x.strip}.join("\n")
      Creates a Merb application stub.

      USAGE: #{spec.name} -g path"
    EOS
  end

end
