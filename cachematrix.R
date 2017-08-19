## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(m = matrix()) {
    i <- NULL
    set <- function(mtrx){
        m <<- mtrx
        i <<- NULL
    }
    get <- function(){
        m
    } 
    setinv <- function(inv){
        i <<- inv
    }
    getinv <- function(){
        i
    }
    list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(m, ...) {
        ## Return a matrix that is the inverse of 'x'
    i <- m$getinv()
    if(!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    mat <- m$get()
    i <- solve(mat, ...)
    m$setinv(i)
    i
}

    