require 'minitest/autorun'
require 'sarah/xk'

class MySarahXK < Sarah::XK; end

class TestSarah_XK_01 < MiniTest::Unit::TestCase

    def test_new
	s1 = Sarah::XK.new
	assert_kind_of Sarah, s1, 's1 is a Sarah'
	assert_instance_of Sarah::XK, s1, 's1 is a Sarah::XK'

	s2 = s1.xkeys_new
	assert_instance_of Sarah::XK, s2, 's2 is also a Sarah::XK'

	s3 = MySarahXK.new
	assert_kind_of Sarah, s3, 's3 is a Sarah'
	assert_kind_of Sarah::XK, s3, 's3 is a Sarah::XK'
	assert_instance_of MySarahXK, s3, 's3 is a MySarahXK'

	s4 = s3.xkeys_new
	assert_instance_of MySarahXK, s4, 's4 is also a MySarahXK'
    end

    def test_next
	s = Sarah::XK.new :array => [9, 8], :hash => { :key => 'value' }
	assert_equal 2, s.seq_size, 's seq_size initially'
	assert_equal [9, 8], s.seq, 's array initially'
	assert_equal({ :key => 'value' }, s.rnd, 's hash initially')

	s[:[]] = 7
	assert_equal 3, s.seq_size, 's seq_size after [:[]]'
	assert_equal [9, 8, 7], s.seq, 's array after [:[]]'
	assert_equal({ :key => 'value' }, s.rnd, 's hash unchanged')
    end

end
