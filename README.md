<h1 align="center">DelayCorrectedPFVGData.jl</h1>



## ℹ What is this?
This repository contains the data for the via the [DelayCorrectedPFVG.jl](https://github.com/HITS-AIN/DelayCorrectedPFVG.jl) repository.

## 💾 Installation 

This package is registered with [AINJuliaRegistry](https://github.com/HITS-AIN/AINJuliaRegistry).
Please add `AINJuliaRegistry` in order to use package.
Install with `add DelayCorrectedPFVGData` in package mode once `AINJuliaRegistry` has been added to your Julia installation.

## ▶ Available datasets

3C120.

## ▶ Available functions

The package exports two functions called `listdatasets` and `readdataset`.

## ▶ Example

See a brief description in "help mode" with e.g. ?readdataset.

```
using DelayCorrectedPFVGData
using PyPlot # must be independently installed

days, flux, stdflux, galaxyvector = readdataset(source="3C120")

figure(1) ; cla()

for i in 1:length(days)
  errorbar(days[i], flux[i], yerr=stdflux[i], fmt="o")
end
```

## 🛠 Note for HITS-AIN maintainers

To add a new source:
- create a new folder under src/Data and give it a name e.g. "3C120".
- create a new function under src that reads the data and call it readSource.jl e.g. read3C120.jl
- include "read3C" in 120.jl in DelayCorrectedPFVGData.jl

If the instructions are successful, then you don't need to make any further modifications.


