## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  t <- NULLmcm$
  set <- function(y) {
    x <<- y
    t <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) t <<- solve
  getsolve <- function() t
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  t <- x$getsolve()
  if(!is.null(t)) {
    message("getting cached data")
    return(t)
  }
  data <- x$get()
  t <- solve(data, ...)
  x$setsolve(t)
  t
}
