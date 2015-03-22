## Put comments here that give an overall description of what your
## functions do
#The two functions below are used to create a special object that creates a special matrix and cache's its inverse. 

## Write a short comment describing this function
#Create a function called makeCacheMatrix that creates a matrix

makeCacheMatrix <- function(x = matrix()) {
m<-NULL
set<-function(y){     #set the value of the matrix
x<<-y
m<<-NULL
}
get<-function() x         #get the value of the matrix
  set.matrix<-function(solve) m<<- solve      #set the value of matrix inverse
  get.matrix<-function() m                    #get the value of the matrix inverse
  list(set=set, get=get,
       set.matrix=set.matrix,
       get.matrix=get.matrix)
}

## Write a short comment describing this function
#This function calculates the mean of the special "vector" created with the above function.

#cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
m<-x$get.matrix()
if(!is.null(m)){
message("getting cached data")
return(m)
}
data<-x$get()
m<-solve(data, ...)
x$set.matrix(m)
m
}
