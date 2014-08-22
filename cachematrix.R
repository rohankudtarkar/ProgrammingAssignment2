makeCacheMatrix <- function(x = matrix()) {  # input x will be a matrix
<<<<<<< HEAD
  I<-NULL                                  #I will be our Inverse Matrix and it's reset to NULL every 
  set <- function(y=matrix()) {            # takes an input Matrix
    x <<- y                                # saves the input Matrix
    I <<- NULL                             # resets the inverse matrix to NULL
  }
  get <- function() { x }                  # this function returns the value of the original matrix
  setMatrix <- function(solve)             # this is called by cacheSolve() during the first cacheSolve()
  { I <<- solve }                        # access and it will store the value using superassignment
  getMatrix<-function() I                  # this will return the cached matrix to cacheSolve() on subsequent accesses
  
  #  This list is returned with the newly created object.
  
  list(set=set, get=get,setMatrix=setMatrix,getMatrix=getMatrix)
=======
    I<-NULL                                  #I will be our Inverse Matrix and it's reset to NULL every 
    set <- function(y=matrix()) {            # takes an input Matrix
      x <<- y                                # saves the input Matrix
      I <<- NULL                             # resets the inverse matrix to NULL
    }
    get <- function() { x }                  # this function returns the value of the original matrix
    setMatrix <- function(solve)             # this is called by cacheSolve() during the first cacheSolve()
      { I <<- solve }                        # access and it will store the value using superassignment
    getMatrix<-function() I                  # this will return the cached matrix to cacheSolve() on subsequent accesses
    
    #  This list is returned with the newly created object.
    
    list(set=set, get=get,setMatrix=setMatrix,getMatrix=getMatrix)
>>>>>>> 95edf25782865b2656f3022ee3e62650b1afab84
}
cacheSolve <- function(x=matrix(), ...) {   # the input is an object created by makeCacheMatrix
  I<-x$getMatrix()                          # accesses the object 'x' and gets the value of the Inverse Matrix
  if(!is.null(I)){                          # if inverse was already cached (not NULL) ...
    message("getting cached data")          # ... send this message to the console
    return(I)                               # ... and return the inverse ... "return" ends 
  }
  tempmatrix<-x$get()                       # we reach this code only if x$getMatrix() returned NULL
  I<-solve(tempmatrix,...)                  # if m was NULL then we have to calculate the Inverse
  x$setMatrix(I)                            # store the calculated Inverse Matrix value in x 
  I                                         # return the Inverse Matrix to the code that called this function
}

