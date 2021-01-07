mutable struct Mat22
  zz :: Float64
  zo :: Float64
  oz :: Float64
  oo :: Float64
end

function construct(::Type{Mat22})
   return Mat22(0.0,0.0,0.0,0.0)
end

function unity(a :: Mat22)
  a.zz = 1.0
  a.zo = 0.0
  a.oz = 0.0
  a.oo = 1.0
end

function add(a :: Mat22, b :: Mat22, c :: Mat22)
  c.zz = a.zz + b.zz
  c.zo = a.zo + b.zo
  c.oz = a.oz + b.oz
  c.oo = a.oo + b.oo
end
