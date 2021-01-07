
include("signed_int64_member.jl")
include("float64_member.jl")
include("mat22.jl")

include("two.jl")

println(two(SignedInt64Member))

println(two(Float64Member))

println(two(Mat22))

