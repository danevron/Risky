class Matcher

  attr_accessor :storage

  def initialize()
    @storage = nil
  end

  
  def match(identifier)
    @storage.search(identifier)
  end
end
