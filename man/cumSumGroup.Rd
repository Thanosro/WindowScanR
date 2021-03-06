% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cumSumGroup.R
\name{cumSumGroup}
\alias{cumSumGroup}
\title{Cumulative sum across groups}
\usage{
cumSumGroup(x, group)
}
\arguments{
\item{x}{vector of numeric values.}

\item{group}{vector of grouping variable.}
}
\value{
A numeric vector.
}
\description{
Cumulative sum across groups
}
\examples{
### Some example data ###
group <- factor(rep(c("A", "B", "C"), each = 10))
position <- c(1:10, 1:10, 51:60)
values <- rep(1, 30)

### Plot with original positions ###
# Groups "A" and "B" overlap
plot(position, values, col = group)

### Plot with cumsum ###
# Notice how the points strech in distance
# That's because we keep calculating the
# cumulative sum within groups
plot(cumsum(position), values, col = group)

### Plot with cumSumGroup ###
# Now, on the x-axis, the points are separated 
# by 1 unit WITHIN groups. But cumulatively
# ACROSS groups
plot(cumSumGroup(position, group), values, col = group)
}
