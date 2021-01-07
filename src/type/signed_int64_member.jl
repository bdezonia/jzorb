mutable struct SignedInt64Member
  v :: Int64
end

function construct(::Type{SignedInt64Member})
  return SignedInt64Member(0)
end

function unity(a :: SignedInt64Member)
  a.v = 1
end

function add(a :: SignedInt64Member, b :: SignedInt64Member, c :: SignedInt64Member)
  c.v = a.v + b.v
end

