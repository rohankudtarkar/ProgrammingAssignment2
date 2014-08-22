makeCacheMatrix <- function(x = matrix()) { 
    I<-NULL
    set <- function(y=matrix()) {
      x <<- y  
      I <<- NULL
    }
    get <- function() { x } 
    setMatrix <- function(solve)
      { I <<- solve }
    getMatrix<-function() I
    list(set=set, get=get,setMatrix=setMatrix,getMatrix=getMatrix)
}
cacheSolve <- function(x=matrix(), ...) {
  I<-x$getMatrix()
  if(!is.null(I)){
    message("getting cached data")
    return(I)
  }
  tempmatrix<-x$get()
  I<-solve(tempmatrix,...)
  x$setMatrix(I)
  I
}

