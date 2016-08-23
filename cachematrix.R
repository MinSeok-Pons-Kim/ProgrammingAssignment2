makeCacheMatrix <- function(x = matrix()) {
    # set inverse as NULL in the first time
    inv <- NULL
    
    # when got new matrix, replace old one with new one and set inverse matrix NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    
    # get the matrix
    get <- function() x
    
    # set the inverse matrix with new inverse_matrix
    set_inverse <- function(inverse_matrix) inv <<- inverse_matrix
    
    # get the inverse matrix
    get_inverse <- function() inv
    
    # return the list
    list(set = set, get = get,
        set_inverse = set_inverse,
        get_inverse = get_inverse)
        
}

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    
    inverse_matrix <- x$get_inverse()

    #if there is no inverse matrix in cache then make a new one and also save it in cache
    if(!is.null(inverse_matrix)){
        message("getting inverse matrix")
        return(inverse_matrix)
    }
    
    inverse_matrix <- matrix(, nrow <- nrow(x$get()), ncol <- 0)
    # or you can replace as matrix(nrow <- dim(x$get(x))[1], ncol <- 0)
    for(n in 1:nrow(x$get())){ # stuff data inverse
        inverse_matrix <- cbind(inverse_matrix, a[n,])
    }
    #set inverse_matrix
    x$set_inverse(inverse_matrix)
    
    #return inverse_matrix
    inverse_matrix
    
}