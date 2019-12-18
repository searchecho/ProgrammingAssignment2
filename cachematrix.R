## Put comments here that give an overall description of what your
## functions do

## Create a matrix that is invertible.

makeCacheMatrix <- function(x = matrix()) {
            i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setinverse <- function(invert) i <<- invert
    getinverse <- function() i
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Calculate the inverse of the matrix created by the first function, and store the invert in the cached data

cacheSolve <- function(x, ...) {
         i <- x$getinverse()
    if(!is.null(i)) {
        message("getting cached data")
            ## Check if the invert is already calculated
        return(i)
    }
    data <- x$get()
    i <- solve(data, ...)
    x$setinverse(i)
    i        ## Return a matrix that is the inverse of 'x'
}
