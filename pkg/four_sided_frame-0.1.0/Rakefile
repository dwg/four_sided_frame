require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('four_sided_frame', '0.1.0') do |p|
  p.description    = "Generate a unique token with Active Record."
  p.url            = "http://github.com/dwg/four_sided_frame"
  p.author         = "Arni Einarsson"
  p.email          = "arni.dwg@gmail.com"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
