<h1 align="center">DelayCorrectedPFVGData.jl</h1>



## ℹ What is this?
This repository contains the data for the via the [DelayCorrectedPFVG.jl](https://github.com/HITS-AIN/DelayCorrectedPFVG.jl) repository.


## For AIN maintainers

To add a new source:
- create a new folder under src/Data and give it a name e.g. "3C120".
- create a new function under src that reads the data and call it readSource.jl e.g. read3C120.jl
- include "read3C" in 120.jl in DelayCorrectedPFVGData.jl

If the instructions are successful, then you don't need to make any further modifications.


