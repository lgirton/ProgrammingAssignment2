## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolution <- function(solution) m <<- solution
  getsolution <- function() m
  list(set = set, get = get, 
       getsolution = getsolution, 
       setsolution = setsolution)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getsolution()
  if (!is.null(m)) {
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setsolution(m)
  m
}
