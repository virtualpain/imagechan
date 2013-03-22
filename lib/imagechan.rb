# require File.join(File.dirname(__FILE__),"imagechan","version")

dir = File.join(File.dirname(__FILE__))
files = Dir["imagechan/*.rb"]
files.each do |file|
	require dir + "/" + file
end

module Imagechan
  def self.dir
  	return File.join(Dir.home,'.imagechan')
  end
end
