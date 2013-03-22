require "test/unit"
require "../lib/imagechan"
require "../lib/imagechan/version"

# My first test case

class DirTest < Test::Unit::TestCase
	def test_dir
		expected = Imagechan.dir
		assert_equal expected, File.join(Dir.home,".imagechan")
	end
	def test_ver
		expected = Imagechan.version
		assert_equal expected, "0.0.1"
	end
end