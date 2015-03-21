## The first function will create a matrix and cache its inverse; 
## the second function wiil calculate the inverse of a matrix; if this inverse is already in cache, the function will return that value.

## Function that create a matrix object to cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() m
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}


## Function that calculate the inverse of a matrix, with a logical test to check if
## the inverse has already been calculated and, in this case, retrieving the value from the cache.

cacheSolve <- function(x, ...){
        
        m <- x$getsolve()
        
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
        m
}
        ## Return a matrix that is the inverse of 'x'
}
