require 'byebug'

AbstractInitializationError = Class.new(StandardError)

module AbstractBase
  def abstract_methods(*method_names)
    method_names.each do |name|
      define_method name do
        raise NotImplementedError
      end
    end
  end

  def abstract_class=(bool)
    return unless bool
    abstract_class_name = self.to_s
    define_method :initialize do |*parameters|
      unless self.class.to_s != abstract_class_name
        raise AbstractInitializationError
      end
    end
  end
end
