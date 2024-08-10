# DelayCorrectedPFVGData

[![Build Status](https://github.com/ngiann/DelayCorrectedPFVGData.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/ngiann/DelayCorrectedPFVGData.jl/actions/workflows/CI.yml?query=branch%3Amain)


# For AIN maintainers

To add a new source:
- create a new folder under src/Data and give it a name e.g. "3C120".
- create a new function under src that reads the data and call it readSource.jl e.g. read3C120.jl
- include "read3C" in 120.jl in DelayCorrectedPFVGData.jl

If the instructions are successful, then you don't need to make any further modifications.