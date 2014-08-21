corr <- function(directory, threshold = 0) {
      files_list <- list.files(directory, full.names=TRUE)
      numfiles <- length(files_list)
      numfiles
      #correlate <- data.frame()
      correlate <- vector("numeric", length=0)
      j=1
      for(i in 1:numfiles) {
            dat <- read.csv(files_list[i])
            good_dat <- complete.cases(dat)
            good_obs <- dat[good_dat,]
            nob <- length(good_obs$ID)
            if (nob > threshold) {
                  sulfatecor <- good_obs$sulfate
                  nitratecor <- good_obs$nitrate
                  newcor <- cor(sulfatecor,nitratecor)
                  correlate[j] <- newcor
                  j=j+1
            }
      }
      correlate
}