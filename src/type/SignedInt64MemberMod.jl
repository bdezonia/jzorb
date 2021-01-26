
module SignedInt64MemberMod

    using UnityBase, AddBase
    
    export SignedInt64Member
    
    struct SignedInt64Member
        val :: Int64
    end

    UnityBase.unity(::Type{SignedInt64Member}) = SignedInt64Member(1)
    
    AddBase.add(a::SignedInt64Member, b::SignedInt64Member) = SignedInt64Member(a.val + b.val)

end
