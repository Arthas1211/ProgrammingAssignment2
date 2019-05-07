## Cache the inverse of a matrix

## Create the special matrix to get the inverse of a matrix
makeCacheMatrix <- function(x = matrix()) {
        y <- NULL
        ##Set the matrix
        set <- function(z) {
                x <<- z
                y <<- NULL
        }
        ##Get the matrix
        get <- function() 
        x
        ##Set the inverse of the matrix
        setinverse <- function(inverse)
        y <<- inverse
        ##Get the inverse of the matrix
        getinverse <- function() 
        y
        list(set = set, get = get,
                setinverse = setinverse,
                getinverse = getinverse)
}

##Calculate the inverse of the special matrix
cacheSolve <- function(x, ...) {
        y <- x$getinverse()
        ##Check if the inverse is already calculated
        if( !is.null(y) ) {
                message("getting cached data")
                return(y)
        }
        ## Get the matrix
        data <- x$get()
        ## Calculate the inverse of the matrix
        y <- solve(data)
        ## Set the inverse in the cache
        x$setinverse(y)
        y
}
