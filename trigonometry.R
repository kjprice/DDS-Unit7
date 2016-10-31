
## Problem 1 Wite a function in R that computes the hypotenuse of a right-angle triangle, given the other two sides.

# package to work with degrees instead of radians
#install.packages("NISTunits", dependencies = TRUE)
library(NISTunits)

# This assumes the two sides are the smallest sides of a right-angle triangle
calculate.hypotenuse = function(side1, side2) {
  sqrt(side1^2 + side2^2)
}

## Problem 2 Write a function in R which calculates the angles of the triangle in part (a), hint: you can use the inverse trig function asin to calculate the angles
calculate.angles = function(side1, side2) {
  # using this little gem for inspiration https://www.mathsisfun.com/algebra/trig-finding-angle-right-triangle.html
  hypotenuse = calculate.hypotenuse(side1, side2)

  angle1 = asin(side1/hypotenuse)
  angle2 = asin(side2/hypotenuse)
  
  # the values, from asin, are in radians, we want them in degrees
  angle1.degrees = NISTradianTOdeg(angle1)
  angle2.degrees = NISTradianTOdeg(angle2)
  
  # return a vector of the two values
  c(angle1.degrees, angle2.degrees)
}

## Examples
calculate.angles(3, 4)
calculate.angles(1, 1)
calculate.angles(12, 4)

