## Put comments here that give an overall description of what your
## functions do



# reads a matrix and return a list with the matrix and it's inverted matrix
# assuming the matrix can be inverted
 
makeCacheMatrix <- function(x = matrix()) {
  # matrix() --> list()
 inverse <- solve( x )
  list( x, inverse=inverse) 
}


# reads the cachedMatrix
# If there is an inversed matrix present; return that one
# Otherwise create an inverted matrix based on x
# Returns: inversed matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        if( "inverse" %in% names(x) ){
          # x contains it's inverse, return it
          message("getting cached data")
          return( inversecache$inverse )
        }
        # no inverted matrix in cache
        # return the inverted matrix
        solve( x ) 
}


# test
x <- matrix( 1:4, nrow=2)
inversecache <- makeCacheMatrix( x )


cacheSolve( inversecache)
cacheSolve( x )


