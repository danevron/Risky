module MatcherFactory
  def self.get_matcher(type)
    case type
    when "customer_id"
      CustomerIdMatcher.new
    when "browser_ip"
      BrowserIpMatcher.new
    when "shipping_name"
      ShippingNameMatcher.new
    end
  end
end
