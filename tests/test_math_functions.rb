require './lib/math_functions.rb'
require 'test/unit'

class TESTMath < Test::Unit::TestCase

    def setup
        @math = Calculator::MathLib.new
    end    

    def test_add
        result = @math.add(*[2,2,2])
        assert_equal(6,result)

        result = @math.add(2,2,2)
        assert_equal(6,result)
    end

    def test_substract
        result = @math.subs(2,8)
        assert_equal(-6 ,result)
    end

    def test_isPrime_positive
        result = @math.is_prime(13)
        assert_equal(true,result)
    end

    def test_isPrime_negative
        result = @math.is_prime(8)
        assert_equal(false,result)
    end

    def test_isPrime_1
        result = @math.is_prime(1)
        assert_equal(true,result)
    end
    def test_isPrime_LessThan1
        result = @math.is_prime(0)
        assert_equal(false,result)
        result = @math.is_prime(-9)
        assert_equal(false,result)
    end
end