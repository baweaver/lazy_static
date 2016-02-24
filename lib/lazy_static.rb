require "lazy_static/version"

module LazyStatic
  def self.check(object, is_a:)
    is_a === object or raise TypeError, "Expected #{object} to be #{is_a}"
  end
end
