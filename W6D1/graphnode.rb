class GraphNode

    attr_accessor :value, :neighbors

    def initialize(value)
        @value = value
        @neighbors = []
    end

    def bfs(starting_node,target_value)
        queue = [starting_node]
        visited = Set.new()
        return nil if visited.includes?(starting_node.value)
        until queue.empty?
            node = queue.shift
            visited.add(node.value)
            return node if node.value == target_value
            node.neighbors.each { |neigh| queue.push(neigh) }
        end
    end

end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]