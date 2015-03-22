## Put comments here that give an overall description of what your
## functions do

## .  The following function makeCacheMatrix creates a special "matrix", which is really a list containing a function to
# set the value of the matrix
# get the value of the matrix
# set the inverse of the matrix
# get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set<- function(y)
  {x <<- y
   m <<- NULL   
    
  }
  get <- function() x
  setinverse <- function(inverse) m<<- inverse
  getinverse <- function() m
  list(set=set,get=get,setinverse=setinverse, getinverse=getinverse)

  
}


##the following function cacheSolve calculates the inverse of the special matrix,created 
## with the above function to see if the inverse has already been calculated.
## if yes then it skips the calculation and gets the value from the cache. otherwise 
## it calculates the value from data and sets the matrix inverse in the cache via setinverse
##function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
m <- x$getinverse()

if(!is.null(m))
{message("getting cached data")
 return (m)
  
}
data <- x$get()
m<- solve(data,...)
x$setinverse(m)
}
