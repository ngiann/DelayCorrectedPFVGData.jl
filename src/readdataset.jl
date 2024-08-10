"""
    days, flux, stdflux, galaxyvector = readdataset(; source = source)

    Load observed data and corresponding galaxy vector.

"""
function readdataset(;source=source)

    if source in listdatasets()

        eval(Expr(:call, Symbol("read"*source)))

    else

        @printf("Argument source must be one of the following:\n")

        map(x->@printf("%s\n",x), listdatasets())

        error(@sprintf("%s unknown source!", source))

    end

end