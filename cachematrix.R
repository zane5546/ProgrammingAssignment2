## Put comments here that give an overall description of what your
## functions do

## Basically a copy of the example functions using the atrix and solve functions instead of numeric and mean.
#sets makeCacheMatrix as a function creating a matrix (for values to be input)
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y #chaces matrix to a new environment for later use by cacheSolve function
    m <<- NULL #sets NULL as default
  }
  get <- function() x
  setmatrix <- function(solve) m <<- solve
  getmatrix <- function() m
  list(set = set, get = get,
       setmatrix = setmatrix,
       getmatrix = getmatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  m <- x$getmatrix()
  if(!is.null(m)) { #checks if matrix already computed. If so takes the value from that environment
    message("getting cached matrix")
    return(m)
  }
  matrix <- x$get()
  m <- solve(matrix, ...) #If value is not available, calculates using solve
  x$setmatrix(m)
  m
        ## Return a matrix that is the inverse of 'x'
}