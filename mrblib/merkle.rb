module Merkle
  class ProofNode
    attr :is_right, :hash

    def initialize(is_right, hash)
      @is_right = is_right
      @hash = hash
    end
  end

  class Proof
    attr :nodes

    def initialize(nodes)
      @nodes = nodes
    end
  end


  def verify(root, data, merge)
    self.nodes.reduce(data) do |h, x|
      if x.is_right
        merge.call(h, x.hash)
      else
        merge.call(x.hash, h)
      end
    end == root
  end
end
