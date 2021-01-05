
function two(type)
  result = construct(type)
  a = unity(type)
  b = unity(type)
  add(a,b,result)
  return result
end

mutable struct SignedInt64Member
  v :: Int64
end

function construct(::Type{SignedInt64Member})
  return SignedInt64Member(0)
end

function unity(::Type{SignedInt64Member})
  return SignedInt64Member(1)
end

function add(a :: SignedInt64Member, b :: SignedInt64Member, c :: SignedInt64Member)
  c.v = a.v + b.v
end

mutable struct Float64Member
  v :: Float64
end

function construct(::Type{Float64Member})
  return Float64Member(0.0)
end

function unity(::Type{Float64Member})
  return Float64Member(1.0)
end

function add(a :: Float64Member, b :: Float64Member, c :: Float64Member)
  c.v = a.v + b.v
end

mutable struct Mat22
  zz :: Float64
  zo :: Float64
  oz :: Float64
  oo :: Float64
end

function construct(::Type{Mat22})
   return Mat22(0.0,0.0,0.0,0.0)
end

function unity(::Type{Mat22})
   return Mat22(1.0,0.0,0.0,1.0)
end

function add(a :: Mat22, b :: Mat22, c :: Mat22)
  c.zz = a.zz + b.zz
  c.zo = a.zo + b.zo
  c.oz = a.oz + b.oz
  c.oo = a.oo + b.oo
end

println(two(SignedInt64Member))

println(two(Float64Member))

println(two(Mat22))

