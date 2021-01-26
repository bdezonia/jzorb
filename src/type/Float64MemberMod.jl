
module Float64MemberMod
 
    using UnityBase, AddBase

    export Float64Member
    
    struct Float64Member
        val :: Float64
    end

    UnityBase.unity(::Type{Float64Member}) = Float64Member(1.0)
    
    AddBase.add(a::Float64Member, b::Float64Member) = Float64Member(a.val + b.val)

end
