class InMemoryStorage
  def initialize
    @db = {
      "customer_id1" => [1, 2, 3],
      "customer_id2" => [4, 5, 6],
      "customer_id3" => [7, 8, 9],
      "customer_id4" => [1111, 2222, 3333],
      "0.0.0.0" => [2, 3, 4],
      "1.1.1.1" => [5, 6, 7],
      "2.2.2.2" => [111, 222, 333],
      "3.3.3.3" => [1111, 2222, 3333],
      "dani:evron" => [3, 4, 5],
      "adam:fineberg" => [6, 7, 8]
    }
  end

  def search(query)
      @db[query] || []
  end
end
