module SearchHelper
  def self.process(identifiers_hash)
    result = Hash.new
    identifiers_hash.each do |type, orders|
      orders.each do |order|
        result[order] ||= []
        result[order].push(type)
      end
    end

    result
  end
end
