#Its the function they made us do in the project. It does what it says


  makeCacheMatrix <- function(x =matrix()){
    inv <- NULL
    set <- function(y){
      x <<- y
      inv <<- NULL
      
    }
    get <-function() {x}
    setInverse <- function(inverse) {inv <<- inverse}
    getInverse <- function() {inv}
    list(set =set, get =get, SetInverse = setInverse, getInverse =getInverse)
  }



## Write a short comment describing this function

cacheSolve <- function(x, ...) { inv<- x$getInverse()
if(!is.null(inv)){
  message("getting cached data")
  return(inv)
}
mat <- x$get()
inv <- solve(mat, ...)
x$setInverse(inv)
inv
      
}
