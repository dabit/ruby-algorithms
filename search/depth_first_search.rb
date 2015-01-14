GRAPH = [
 # A B C D E F
  [0,1,0,1,0,0], # A
  [1,0,1,0,0,0], # B
  [0,1,0,0,0,0], # C
  [1,0,0,0,1,1], # D
  [0,0,0,1,0,0], # E
  [0,0,0,1,0,0]  # F
]

LABEL = %w(A B C D E F)

class Graph
  attr_accessor :graph, :visited

  def initialize(graph)
    @graph = graph
    @visited = []
  end

  def depth_first_search(i = 0)
    label = LABEL[i]
    puts "Visited #{label}"
    visited << label
    graph[i].each_with_index do |n, ii|
      if n == 1 && !visited.include?(LABEL[ii])
        depth_first_search(ii)
      end
    end
  end
end

g = Graph.new(GRAPH)

g.depth_first_search
