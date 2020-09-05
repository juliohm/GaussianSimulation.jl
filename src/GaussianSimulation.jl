# ------------------------------------------------------------------
# Licensed under the ISC License. See LICENCE in the project root.
# ------------------------------------------------------------------

module GaussianSimulation

using GeoStatsBase
using Variography
using KrigingEstimators
using Distributions
using LinearAlgebra
using Statistics
using FFTW
using CpuId

import GeoStatsBase: preprocess, solvesingle

include("lu.jl")
include("fft.jl")
include("seq.jl")

export
  LUGaussSim,
  FFTGaussSim,
  SeqGaussSim

end
