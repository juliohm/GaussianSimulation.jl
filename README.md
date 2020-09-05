# GaussianSimulation.jl

[![][travis-img]][travis-url] [![][codecov-img]][codecov-url]

## Installation

Get the latest stable release with Julia's package manager:

```julia
] add GaussianSimulation
```

## Usage

This package is part of the [GeoStats.jl](https://github.com/JuliaEarth/GeoStats.jl) framework.

For a simple example of usage, please check the main documentation.

## Available solvers

### DirectGaussSim

This solver provides an implementation of direct Gaussian simulation (a.k.a. LU simulation)
as described in [Alabert 1987](https://link.springer.com/article/10.1007/BF00897191). In this
method, the full covariance matrix is built to include all locations of the simulation domain,
and samples from the multivariate Gaussian are drawn via LU factorization.

The method, which is widely implemented in many packages for Gaussian processes (e.g.
[GaussianProcesses.jl](https://github.com/STOR-i/GaussianProcesses.jl)),
is appropriate for relatively small simulation domains (e.g. 100x100 grids) where it is feasible
to factorize the full covariance. For larger domains (e.g. 3D grids), other methods are available
such as sequential Gaussian simulation, spectral methods, and FFT moving averages.

### SpecGaussSim

This solver provides an implementation of spectral Gaussian simulation
as described in [Gutjahr 1997](https://link.springer.com/article/10.1007/BF02769641).
In this method, the covariance function is perturbed in the frequency
domain after a fast Fourier transform. White noise is added to the phase
of the spectrum, and a realization is produced by an inverse Fourier transform.

The method is limited to simulations on regular grids, and care must be taken
to make sure that the correlation length is small enough compared to the grid
size. As a general rule of thumb, avoid correlation lengths greater than 1/3
of the grid. The method is extremely fast, and can be used to generate large
3D realizations.

## Asking for help

If you have any questions, please contact our community on the [gitter channel](https://gitter.im/JuliaEarth/GeoStats.jl).

[travis-img]: https://travis-ci.org/JuliaEarth/GaussianSimulation.jl.svg?branch=master
[travis-url]: https://travis-ci.org/JuliaEarth/GaussianSimulation.jl

[codecov-img]: https://codecov.io/gh/JuliaEarth/GaussianSimulation.jl/branch/master/graph/badge.svg
[codecov-url]: https://codecov.io/gh/JuliaEarth/GaussianSimulation.jl
