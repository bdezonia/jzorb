
module Mat22MemberMod

    using UnityBase, AddBase

    export Mat22Member
    
    struct Mat22Member
      zz :: Float64
      zo :: Float64
      oz :: Float64
      oo :: Float64
    end

    UnityBase.unity(::Type{Mat22Member}) = Mat22Member(1.0,0.0,0.0,1.0)
    
    AddBase.add(a::Mat22Member, b::Mat22Member) = Mat22Member(a.zz + b.zz, a.zo + b.zo, a.oz + b.oz, a.oo + b.oo)

end
