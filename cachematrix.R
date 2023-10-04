## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

> makeCacheMatrix <- function(x=matrix()){
+ n1 <-null
+ set <-function(m1){
+ x<<-m1
+ n1 <<-NULL
+ }
+ get <-function()x
+ setinverse <-function(solve) n1 <<-solve
+ getinverse <-function ()n1
+ list (set =set, get=get, serinverse =setinverse, getinverse=getinverse)
+ }

## Write a short comment describing this function

> cacheSolve <-function(x,...){
+ n1 <-x$getinverse()
+ if(!is.null(n1)){
+ message("getting cached data")
+ return(n1)}
+ data <-x$get()
+ n1 <-solve(data)
+ x$setinverse(n1)
+ n1
+ }
