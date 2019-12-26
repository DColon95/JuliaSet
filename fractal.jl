function julia_set(xmin, xmax, ymin, ymax, xn, yn, c, maxiter)
    X = range(xmin, length=xn, stop=xmax)
    Y = range(ymin, length=yn, stop=ymax)
    Z = X .+ (Y')*im
    for n = 1:maxiter
        I = abs.(Z) .< horizon
        @. Z[I] = Z[I]^2 + c
    end
    return Z
end