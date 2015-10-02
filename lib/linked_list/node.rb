module LinkedList
  class Node
    attr_accessor :value, :next_node

    def self.build_links(size, value)
      return if size == 0
      Node.new(value: value, next_node: build_links(size.pred, value))
    end

    def initialize(value:, next_node: nil)
      @value = value
      @next_node = next_node
    end

    def to_s
      "#{value || '_'}"
    end
    alias_method :inspect, :to_s
  end
end