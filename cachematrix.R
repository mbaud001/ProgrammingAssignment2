
## This function creates a cached inverse matrix to potentially speed up
## processing time when calculating matrix inverses
## Function is based on the sample code provided in assignment instructions

makeCacheMatrix <- function(x = matrix()) {
     invMat <- NULL             ##declares empty inverse matrix variable
     set <- function(y) {         ##sets matrix
          x <<- y
          invMat <<- NULL
     }
     get <- function() x          ##acquires matrix
     setinv <- function(inverse) invMat <<- inverse   ##sets inverse matrix
     getinv <- function() invMat     ##gets inverse matrix
     list(set = set, get = get, setinv = setinv, getinv = getinv)
     ##creates list to be accessed by the cacheSolve function
    
}


##this function retrieves the data from the above function and returns the
##inverse matrix or calculates the inverse matrix if it has yet to be created

cacheSolve <- function(x, ...) {
        invMat <- x$getinv()   ##retrieves inverse from list in above function 
        
        if(!is.null(invMat)){        ##if inverse is already calcuclated it is
            print("getting cached data")   ##retrieved by this loop and returned
            return(invMat)                
        }
        matrix <- x$get()       ##if inverse is not yet calculated, the matrix
        invMat <- solve(matrix, ...)   ##is called from the list created in
    x$setinv(invMat)                   ##earlier function and solved.
return(invMat)     ##inverse matrix is returned
}
