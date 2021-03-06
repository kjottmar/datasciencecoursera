pollutantmean <- function(directory, pollutant, id = 1:332) {
      files_list <- list.files(directory, full.names=TRUE)
      dat <- data.frame()
      for (i in id) {
            dat <- rbind(dat, read.csv(files_list[i]))
      }
      dat_pollutant <- dat[[pollutant]]
      mean(dat_pollutant, na.rm=TRUE)
}
