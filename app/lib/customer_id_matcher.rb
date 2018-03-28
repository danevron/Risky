class CustomerIdMatcher < Matcher
  def match(order)
    @storage.search(order["customer_id"])
  end
end
