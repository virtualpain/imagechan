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

  def self.prepare
  	puts "Preparing directory"
	Dir.mkdir(Imagechan.dir)
  end

  def self.clearlock
  	if File.exists?(File.join(Imagechan.dir,"LOCK"))
  		File.delete File.join(Imagechan.dir,"LOCK") 
  		puts "LOCK cleared!"
  	else
  		puts "There are nothing to unlock"
  	end
  end

  def self.match_thread_url(url)
  	if url.match(/http:\/\/boards\.4chan\.org\/[a-z]+\/res\/[0-9]+/)
  		true
  	else
  		false
  	end
  end

  def self.where?
  	puts Imagechan.dir
  end
end
