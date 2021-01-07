
include("type/signed_int64_member.jl")
include("type/float64_member.jl")
include("type/mat22.jl")

include("algo/two.jl")

println(two(SignedInt64Member))

println(two(Float64Member))

println(two(Mat22))

