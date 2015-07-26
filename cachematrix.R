## creates the inverse of a matrix if the matrix doesn't exist
## already in the global enviroment

## creates a list of functions for getting and setting a
## inverted matrix for storage in an enviroment.

makeCacheMatrix <- function(x = matrix()) {
     m <- NULL
     set <- function(y) {
          x <<- y
          m <<- NULL
     }
     get <- function() x ##pass "x" from the function
     setinv <- function(solve) m <<- solve ##create inverse
     getinv <- function() m ##pass the inverted matrix
     list(set = set, get = get, ##create list of functions
          setinv = setinv,
          getinv = getinv)
}

## Checks if Matrix exists, is the same and retrieves if true.
## else creates inverse matrix

cacheSolve <- function(x, ...) {
     m <- x$getinv() ##retrieve matrix from enviroment x
     if(!is.null(m)) { ##does the matrix contain something?
          message("getting cached data")
          return(m) ##return the matrix
     }
     data <- x$get() ##get data
     m <- solve(data) ##invert matrix
     x$setinv(a -m) ##set the inverted matrix into enviroment x
     m
}
