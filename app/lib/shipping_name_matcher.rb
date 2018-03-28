class ShippingNameMatcher < Matcher
  def match(order)
    @storage.search("#{order["shipping_first_name"]}:#{order["shipping_last_name"]}")
  end
end
