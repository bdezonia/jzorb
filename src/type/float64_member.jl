

mutable struct Float64Member
  v :: Float64
end

function construct(::Type{Float64Member})
  return Float64Member(0.0)
end

function unity(a :: Float64Member)
  a.v = 1.0
end

function add(a :: Float64Member, b :: Float64Member, c :: Float64Member)
  c.v = a.v + b.v
end

