require 'test/unit'
require 'grade'
class TestGrade < Test::Unit::TestCase
	def test_a_gt_b
		a = Grade.new("A")
		b = Grade.new("B")
		assert a > b
	end

	def test_a_lt_ap
		a = Grade.new("A")
		ap = Grade.new("A+")
		assert a < ap
	end

	def test_a_gt_am
		a = Grade.new("A")
		am = Grade.new("A-")
		assert a > am
	end

	def test_sort
		a = Grade.new("A")
		am = Grade.new("A-")
		ap = Grade.new("A+")

		b = Grade.new("B")
		bm = Grade.new("B-")
		bp = Grade.new("B+")

		assert_equal [bm,b,bp,am,a,ap], [a,am,ap,b,bm,bp].sort
	end

	def test_a_eq_A
		a = Grade.new("A")
		a2 = Grade.new("a")
		assert a == a2
	end
end
