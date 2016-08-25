## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
     invMat <- NULL
     set <- function(y) {
          x <<- y
          invMat <<- NULL
     }
     get <- function() x
     setinv <- function(inverse) invMat <<- inverse
     getinv <- function() invMat
     list(set = set, get = get, setinv = setinv, getinv = getinv)
    
}


## Write a short comment describing this function
new
cacheSolve <- function(x, ...) {
        invMat <- x$getinv()
        
        if(!is.null(invMat)){
            print("getting cached data")
            return(invMat)
        }
        matrix <- x$get()
        invMat <- solve(matrix, ...)
    x$setinv(invMat)
return(invMat)
}
