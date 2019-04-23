include Merkle

# https://github.com/cryptape/static-merkle-tree/blob/develop/src/lib.rs#L315

merge = Proc.new { |left, right| left + right }

assert("test_verify") do
  nodes = [ProofNode.new(false, [24, 25]), ProofNode.new(true, [2,3]), ProofNode.new(true, [4,5,6,7]), ProofNode.new(false, [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23])]
  proof = Proof.new(nodes)
  root_hash = [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 1, 2, 3, 4, 5, 6, 7]
  item = [1]

  assert_true(proof.verify(root_hash, item, merge))
end

assert("test_verify") do
  nodes = [ProofNode.new(false, [24]), ProofNode.new(true, [1]), ProofNode.new(true, [2,3]), ProofNode.new(true, [4,5,6,7]), ProofNode.new(false, [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23])]
  proof = Proof.new(nodes)
  root_hash = [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 1, 2, 3, 4, 5, 6, 7]
  item = [25]

  assert_true(proof.verify(root_hash, item, merge))
end
