require './lib/input_checker.rb'
require 'test/unit'

class TestInputChecker < Test::Unit::TestCase
    def test_to_i_array
        in_checker = Calculator::InputChecker.new
        assert_equal([1,3],in_checker.to_i_array(*['1', '3']))
        assert_equal([1,3],in_checker.to_i_array(*[1, '3']))
        assert_equal([1,3],in_checker.to_i_array(1, '3'))
    end
end