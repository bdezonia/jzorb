
function two(type)
  result = construct(type)
  a = unity(type)
  b = unity(type)
  return add(a,b)
end

function construct(::Type{Int64})
  return 0::Int64
end

function unity(::Type{Int64})
  return 1::Int64
end

function add(a :: Int64, b :: Int64)
  return a + b
end

function construct(::Type{Float64})
  return 0.0::Float64
end

function unity(::Type{Float64})
  return 1.0::Float64
end

function add(a :: Float64, b :: Float64)
  return a + b
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

function add(a :: Mat22, b :: Mat22)
  return Mat22(a.zz+b.zz,a.zo+b.zo,a.oz+b.oz,a.oo+b.oo)
end

println(two(Int64))

println(two(Float64))

println(two(Mat22))

