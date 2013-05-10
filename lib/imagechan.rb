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

  def self.id_exists?(id)
  	if Dir[File.join(Imagechan.dir,"*","#{id}*")].size > 0
  		return true
  	else
  		return false
  	end
  end

  def self.get_folder_name_by_id(id)
  	dir = Dir[File.join(Imagechan.dir,"*","#{id}*")].first.split(File::SEPARATOR).last
  	return dir
  end
end
