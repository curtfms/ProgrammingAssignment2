## A pair of functions that cache the inverse of a matrix to 
## help reduce costly re-computation

## Create a special "matrix" object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {

  if (!is.matrix(x)) {
    message("Invalid input")
  }
  else {
    cached.x <<- x
    cached.inv.x <<- solve(x)
  }
}


## Compute the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), then 
## retrieve the inverse from the cache
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  if (!is.matrix(x)) {
    message("Invalid input")
  }
  else if (identical(x, cached.x) && is.matrix(cached.inv.x)) {
    message("Getting cached data")
    cached.inv.x
  }
  else {
    solve(x)
  }
}
