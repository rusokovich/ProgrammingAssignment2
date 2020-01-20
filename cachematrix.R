## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    m<- NULL
    set<<- function(y){
        x<<-y #create enviroment y with the argument of makeCacheMatrix
        m<<-NULL 
    } 
    get<-function() x 
    setinverse <- function(inv) m<<-invrs ## new enviroment
    getinverse<- function() m
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse) #get the list of elements for the next function
    
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    install.packages("matlib")
    library(matlib)
    m<- x$getinverse
    if(!is.null(m)){
        print("getting fata cached")
        return(m)
    }
    data<-x$get()
    m<-inv(data,...)
    x$setinverse(m)
    m
}

ls(environment(makeCacheMatrix))

## Sources: 
## https://cran.r-project.org/web/packages/matlib/vignettes/inv-ex1.html