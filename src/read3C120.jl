function read3C120()

     # Read all content of files

     lcpath = dirname(pathof(DelayCorrectedPFVGData))

     Bfilter = readdlm(lcpath * "/Data/3C120/bj.txt")
     Vfilter = readdlm(lcpath * "/Data/3C120/vj.txt")
     Rfilter = readdlm(lcpath * "/Data/3C120/rj.txt")
     Ifilter = readdlm(lcpath * "/Data/3C120/ij.txt")

     galaxyvector = readdlm(lcpath * "/Data/3C120/Galaxy_vec.txt")
     

     # first columns are observed times

     tobs = [Bfilter[:,1], Vfilter[:,1], Rfilter[:,1], Ifilter[:,1]]

     # second columns are observed fluxes

     yobs = [Bfilter[:,2], Vfilter[:,2], Rfilter[:,2], Ifilter[:,2]]

     # third columns are standard deviations

     σobs = [Bfilter[:,3], Vfilter[:,3], Rfilter[:,3], Ifilter[:,3]]

     @printf("Returning data in order B, V, R and I.\n")

     return tobs, yobs, σobs, galaxyvector

end