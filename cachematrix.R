## creates the inverse of a matrix if the matrix doesn't exist
## already in the global enviroment

## creates inverse matrix and saves it to the global enviroment

makeCacheMatrix <- function(x = matrix()) {
  solve(x) ##expand
}

## Checks if Matrix exists, is the same and retrieves if true.
## else creates inverse matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$matrix() ## check if matrix is there
  if(!is.null(m)) { ##test to check if matrix exists (elaborate)
    message("getting cached data")
    return(m)
  }
  ##create inverse matrix
}
