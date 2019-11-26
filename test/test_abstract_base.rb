require "test/unit"
require_relative '../lib/abstract_base/main'

class BaseTestClass
  extend AbstractBase

  abstract_methods :call, :run
  abstract_class true

  def execute
    true
  end
end

class ChildTestClass < BaseTestClass
  def initialize
    super
  end
end

def test_object_base
  BaseTestClass.new
end

def test_object_child
  ChildTestClass.new
end

class AbstractBaseTest < Test::Unit::TestCase
  def stest_abstract_methods
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

  def test_abstract_initializer
    assert_raise AbstractInitializationError do
      test_object_base
    end

    assert_nothing_raised do
      test_object_child
    end
  end
end
