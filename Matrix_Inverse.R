makeCacheMatrix <- function(x = matrix()) { 
	I<-matrix()
	set <- function(y=matrix()) {
		x <<- y  
		I <<- matrix()
	}
	get <- function() { x } 
	setMatrix <- function(solve)
		{ I <<- solve }
	getMatrix<-function() I
	list(set=set, get=get,setMatrix=setMatrix,getMatrix=getMatrix)
}
cacheSolve <- function(x=matrix(), ...) {
    	I<-x$getMatrix()
    	if(!is.na(I)){
      	message("getting cached data")
      	return(I)
    	}
    	tempmatrix<-x$get()
    	I<-solve(tempmatrix,...)
    	x$setMatrix(I)
    	I
}
