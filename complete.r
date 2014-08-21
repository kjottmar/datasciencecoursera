complete <- function(directory, id = 1:332) {
      files_list <- list.files(directory, full.names=TRUE)
      files_list
      dat <- data.frame()
      numberid <- length(id)
      output <- data.frame(id = 1:numberid, nobs = 1:numberid)
      j=1
      for (i in id) {
            dat <- read.csv(files_list[i])
            good_dat <- complete.cases(dat)
            good_obs <- dat[good_dat,]
            nob <- length(good_obs$ID)
            output[j,1] <- i
            output[j,2] <- nob
            j = j+1
      }
      print(output)
}


x <- matrix(1:6, 2, 3)
print(x)
for(i in seq_len(nrow(x))) {
      for(j in seq_len(ncol(x))) {
            print(x[i,j])
      }
}