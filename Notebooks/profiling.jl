function myfunction(n)
    for i = 1:n
        A = randn(100,100,20)
        m = maximum(A)
        Am = mapslices(sum, A; dims=2)
        B = A[:,:,5]
        Bsort = mapslices(sort, B; dims=1)
        b = rand(100)
        C = B.*b
    end
end


@profiler myfunction(10)


 http://docs.junolab.org/latest/man/juno_frontend.html#Profiler-1
