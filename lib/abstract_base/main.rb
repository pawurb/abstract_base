module AbstractBase
  def abstract_methods(*method_names)
    method_names.each do |name|
      define_method name do
        raise NotImplementedError
      end
    end
  end
end
