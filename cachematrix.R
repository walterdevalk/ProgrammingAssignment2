## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function




makeCacheMatrix <- function(x = matrix()) {
  # matrix() --> list()
  # reads a matrix and return a list with the matrix and it's inverted matrix
  # assuming the matrix can be inverted
  inverse <- solve( x )
  list( x, inverse=inverse) 
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        if( "inverse" %in% names(x) ){
          # x contains it's unverse, return it
          message("getting cached data")
          return( inversecache$inverse )
        }
        # no inverted matrix in cache
        # return the inverted matrix
        solve( x ) 
}


x <- matrix( 1:4, nrow=2)
inversecache <- makeCacheMatrix( x )


cacheSolve( inversecache)
cacheSolve( x )


