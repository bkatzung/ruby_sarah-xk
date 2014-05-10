require 'minitest/autorun'
require 'sarah/xk'

class TestSarah_XK_02 < MiniTest::Unit::TestCase

    def test_subnode
	s1 = Sarah::XK.new
	assert_kind_of Sarah, s1
	assert_kind_of Sarah::XK, s1
	assert_kind_of XKeys::Get, s1
	assert_kind_of XKeys::Set_, s1

	s1[0, 0, {}] = 1
	s1[:first, :second] = :value

	s2 = s1[0]
	assert_kind_of Sarah, s2
	assert_kind_of Sarah::XK, s2
	assert_kind_of XKeys::Get, s2
	assert_kind_of XKeys::Set_, s2
	assert_equal [ 1 ], s2.seq, "s2.seq (s1[0])"

	s3 = s1[:first]
	assert_kind_of Sarah, s3
	assert_kind_of Sarah::XK, s3
	assert_kind_of XKeys::Get, s3
	assert_kind_of XKeys::Set_, s3
	assert_equal({ :second => :value }, s3.rnd, "s3.rnd (s1[:first])")
    end

end
