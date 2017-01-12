require "./lib/Math.rb"
require "test/unit"

class TESTMath < Test::Unit::TestCase
    def setup
        @math = MathLib.new()
    end    

    def test_add
        result = @math.add(2,2)
        assert_equal(4,result)
    end

    def test_substract
        result = @math.subs(2,8)
        assert_equal(-6 ,result)
    end
end