

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inverse_matrix <- x$get_inverse()
    if(!is.null(inv)){
        message("getting inverse matrix")
        return(inverse_matrix)
    }
    
    inverse_matrix <- matrix(nrow <- nrow(x$get(x)), ncol <- 0)
    # or you can replace as matrix(nrow <- dim(x$get(x))[1], ncol <- 0)
    for(n in nrow(x)){ # stuff data inverse
        inverse_matrix <- cbind(inverse_matrix, a[,n])
    }
    #set inverse_matrix
    x$set_inverse(inverse_matrix)
    inverse_matrix
    
}