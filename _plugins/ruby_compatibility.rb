# Monkey patch for Ruby 3.x compatibility with older Liquid version
if RUBY_VERSION.start_with?('3.')
  class String
    def tainted?
      false
    end
  end

  class Object
    def tainted?
      false
    end

    def taint
      self
    end

    def untaint
      self
    end
  end
end
