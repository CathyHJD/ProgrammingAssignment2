## The function calculates the inverse of the special "matrix" created with the makeCacheMatrix function,
## And cache the result into that special "matrix".

cacheSolve <- function(x, ...) {    ## pass makeCacheMatrix object as argument
  
    s <- x$getinverse()
    if(!is.null(s)) {              ## check if the inverse has already been calculated
        message("getting cached data")
        return(s)
    }
    data <- x$get()
    s <- solve(data, ...)
    x$setinverse(s)       ## cache the result via the setinverse function
    s                     ## Return a matrix that is the inverse of 'x'
}
