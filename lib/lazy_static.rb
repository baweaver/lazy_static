require "lazy_static/version"

module LazyStatic
  def self.check(checks)
    checks.each do |object, type|
      object.is_a?(type) or raise TypeError, "Expected #{object} (#{object.class}) to be of type #{type}"
    end
  end
end
