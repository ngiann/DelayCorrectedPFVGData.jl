"""
    listdatasets()

    Returns all available datasets as an array of strings.
"""
function listdatasets()

    lcpath = dirname(pathof(DelayCorrectedPFVGData))

    readdir(lcpath * "/Data")

end