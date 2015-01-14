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

  def breadth_first_search(i = 0)
    label = LABEL[i]
    graph[i].each_with_index do |n, ii|
      #puts "#{i}, #{ii}: #{n}"
      if (i == ii || n == 1) && !visited.include?(LABEL[ii])
        visited << LABEL[ii]
        puts "Visited #{LABEL[ii]}"
      end
    end
    i += 1
    breadth_first_search(i) if graph[i + 1]
  end
end

g = Graph.new(GRAPH)

g.breadth_first_search
