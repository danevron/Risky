module StorageFactory
  def self.get_storage(type)
    case type
    when "in_memory"
      InMemoryStorage.new
    end
  end
end
