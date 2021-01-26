push!(LOAD_PATH, "algebra")
push!(LOAD_PATH, "algo")
push!(LOAD_PATH, "type")

using SignedInt64MemberMod
using Float64MemberMod
using Mat22MemberMod

using TwoAlgoMod

println(two(SignedInt64Member))

println(two(Float64Member))

println(two(Mat22Member))

