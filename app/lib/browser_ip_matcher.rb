class BrowserIpMatcher < Matcher
  def match(order)
    @storage.search(order["browser_ip"])
  end
end
