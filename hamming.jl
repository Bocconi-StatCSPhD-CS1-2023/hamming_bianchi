function hammingdist(l1::T, l2::T) where T<:Union{AbstractArray, AbstractString}
    if typeof(l1)!= typeof(l2)
     throw(error("Types of the arguments must be the same!"))
    end
    if length(l1) != length(l2)
     throw(error("Arguments must have the same length!")
    end
    hd = 0
    for i in length(l1)
     if l1[i] != l2[i]
      hd += 1
     end
    end
    return hd
end