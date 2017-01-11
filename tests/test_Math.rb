require "./lib/Math.rb"
require "test/unit"

class TESTMath < Test::Unit::TestCase
    def test_add
        # math = MathLib.Math.new()
        result = MathLib.add(2,2)
        assert_equal(result, 4)
    end
end