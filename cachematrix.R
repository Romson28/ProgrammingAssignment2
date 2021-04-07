## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
     ## A special matrix will be be created that an inverse could cache   
makeCacheMatrix <- function(x = matrix()) { ## alongside the matrix in default mode, the arguement is defined
inv<-NULL ## This would hold the value of the inversed matrix as it proceeds to define inv as NULL
        set<-function(y){ ## The function is defined to a new assign
                x<<-y ## Matrix in parent environment (value)
                inv<<-NULL ## When a new matrix arises, the inv resets to NULL
}
        get<-function()x ## Function is Defined
        setinverse<-function(inverse)inv<<-inverse ## The parent environment is assigned the values of inv
        getinverse<-function()inv ## the value of inv is alerted
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse) ## Reference  


## Write a short comment describing this function
## The functiom causes inverse of the special matrix to compute 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv<-x$getinverse()
        if(!is.null(inv)) {
                message("getting cached data")
        return(inv)
   }
   data <- x$get()
   inv <- solve(data, ...)
   x$setinverse(inv)
   invS
}
