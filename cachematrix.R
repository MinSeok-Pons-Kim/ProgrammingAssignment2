makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    
    get <- function() x
    
    set_inverse <- function(inverse_matrix) inv <<- inverse_matrix
    
    get_inverse <- function() inv
    
    list(set = set, get = get,
        set_inverse = set_inverse,
        get_inverse = get_inverse)
        
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    
    inverse_matrix <- x$get_inverse()
    
    if(!is.null(inverse_matrix)){
        message("getting inverse matrix")
        return(inverse_matrix)
    }
    
    inverse_matrix <- matrix(, nrow <- nrow(x$get()), ncol <- 0)
    # or you can replace as matrix(nrow <- dim(x$get(x))[1], ncol <- 0)
    for(n in 1:nrow(x)){ # stuff data inverse
        inverse_matrix <- cbind(inverse_matrix, a[,n])
    }
    #set inverse_matrix
    x$set_inverse(inverse_matrix)
    
    #return inverse_matrix
    inverse_matrix
    
}