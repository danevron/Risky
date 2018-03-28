class SearchesController < ApplicationController
  def create
    matches = Hash.new

    matcher_types.each do |type|
      matcher = MatcherFactory.get_matcher(type)
      matcher.storage = storage
      matched_orders = matcher.match(params[:order])
      matches[type] = matched_orders
    end

    result = SearchHelper.process(matches)
    render json: result, status: 200
  end

  private

  def storage
    @storage ||= StorageFactory.get_storage("in_memory")
  end

  def matcher_types
    ["customer_id", "browser_ip", "shipping_name"]
  end
end
