require './lib/string_ext.rb'
require 'test/unit'

class TestStringExt < Test::Unit::TestCase
    def test_is_i?
        assert_equal(true, '1'.is_i?)
        assert_equal(false, '1a'.is_i?)
    end
end