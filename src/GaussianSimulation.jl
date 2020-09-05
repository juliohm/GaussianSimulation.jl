# ------------------------------------------------------------------
# Licensed under the ISC License. See LICENCE in the project root.
# ------------------------------------------------------------------

module GaussianSimulation

using GeoStatsBase

using Variography
using LinearAlgebra
using Statistics
using FFTW
using CpuId


import GeoStatsBase: preprocess, solvesingle

include("direct.jl")
include("spectral.jl")

export
  DirectGaussSim,
  SpecGaussSim

end
