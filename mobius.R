# möbius strip

fx <- function(u, v) {(1 + v/2 * cos(u/2))* cos(u)}
fy <- function(u, v) {(1 + v/2 * cos(u/2))* sin(u)}
fz <- function(u, v) {v/2 *sin(u/2)}

umin <- 0
umax <- 2*pi
vmin <- -1
vmax <- 1
n <- 100

library(misc3d)
library(rgl)

# Plot using misc3d and rgl
parametric3d(fx, fy, fz, umin=umin, umax=umax, vmin=vmin, vmax=vmax, n=n, draw=TRUE)
# Create a Triangle3D object
# mobius3d <- parametric3d(fx, fy, fz, umin=umin, umax=umax, vmin=vmin, vmax=vmax, n=n, draw=FALSE)
# Write as STL
writeSTL(con="mobius_ascii.stl", ascii=TRUE)
writeSTL(con="mobius_binary.stl", ascii=FALSE)

readSTL(con="mobius_binary.stl", ascii=FALSE, plot=TRUE)
