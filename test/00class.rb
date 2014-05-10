require 'minitest/autorun'
require 'sarah/xk'

class TestSarah_XK_00 < MiniTest::Unit::TestCase

    def test_cmethod
	assert_respond_to Sarah::XK, :new
    end

    def test_imethod
	s = Sarah::XK.new
	assert_respond_to s, :xkeys_new
    end

end
