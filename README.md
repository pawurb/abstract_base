# Abstract Base

A simple Ruby gem for definining abstract classes and interfaces.

## Installation

In your Gemfile

```ruby
gem 'abstract_base'
```

## Usage

```ruby

class BaseService
  extend AbstractBase
  self.abstract_class = true
  abstract_methods :validate!

  def call
    validate!
    process
  end

  private

  def process
    ...
  end
end

class ChildService < BaseService
  def initialize(value)
    @value = value
  end

  def validate!
    ...
  end
end

```

Work in progress
