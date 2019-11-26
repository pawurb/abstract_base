require "test/unit"
require_relative '../lib/abstract_base/main'

class TestClass
  extend AbstractBase

  abstract_methods :call, :run

  def execute
    true
  end
end

def test_object
  TestClass.new
end

class AbstractBaseTest < Test::Unit::TestCase
  def test_abstract
    assert_raise NotImplementedError do
      test_object.call
    end

    assert_raise NotImplementedError do
      test_object.run
    end

    assert_nothing_raised do
      test_object.execute
    end
  end
end
