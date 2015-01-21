## This code consists of two functions that combined can cache the inverse of a matrix.

## This first function will create a special 'matrix' object. This  is a list containing a function to:
## 1) set the value of the matrix
## 2) get the value of the matrix
## 3) set the value of the inverse matrix
## 4) get the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
        inverse<-NULL
        set<-function(y) {
                x<<-y
                inverse<<-NULL
        }
        get<-function()x
        setinverse<-function(solve) inverse <<- solve
        getinverse<-function()inverse
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## This second function calculates the inverse of a matrix.
## First, it checks if the inverse matrix has already been calculated and stored in makeCacheMatrix. 
## If so, it gets the inverse matrix from cache. Otherwise it calculates the inverse of the matrix and
## caches it.

cacheSolve <- function(x, ...) {        
        inverse<-x$getinverse()                
        if(!is.null(inverse)){
                message("getting cached data")
                return(inverse)
        }
        data<-x$get()                           
        inverse<-solve(data,...)                
        x$setinverse(inverse)           
        inverse
}
        

