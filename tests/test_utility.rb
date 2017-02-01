require "./lib/utility.rb"
require "test/unit"

class TestUtility < Test::Unit::TestCase
    def setup
        @utility = Calculator::Utility.new()
    end

    def itShouldCheckWhetherTheValueIsInteger
        assert_equal(true,@utility.is_intVal(1))
        assert_equal(true,@utility.is_intVal("1"))
    end
end