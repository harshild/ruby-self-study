require "./lib/util.rb"
require "test/unit"

class TestUtility < Test::Unit::TestCase
    def setup
        @ob = Calculator::Util.new()
    end

    def itShouldCheckWhetherTheValueIsInteger
        assert_equal(true,@ob.is_intVal(1))
        assert_equal(true,@ob.is_intVal("1"))
    end
end