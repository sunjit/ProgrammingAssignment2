## Put comments here that give an overall description of what your
## functions do

## function to set & get the matrix and its Inverse

makeCacheMatrix <- function(x = matrix()) {

I <- NULL
        set <- function(y) {
                x <<- y
                I <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) I <<- solve
        getinverse <- function() I
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)

}


## This function will calculate the Inverse of Matrix if not present in cache

cacheSolve <- function(x, ...) {


        ## Return a matrix that is the inverse of 'x'
 I <- x$getinverse()
        if(!is.null(I)) {
                message("getting cached data")
                return(I)
        }
        data <- x$get()
        I <- solve(data, ...)
        x$setinverse(I)
        I
}


