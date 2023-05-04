# Compute pheophytin concentration

compute_pheo <- function(file1, file2, va, vw, df, pl){
  require(tidyverse)
  ud <- read_delim(file1,delim=",",skip=1, show_col_types = FALSE)
  cd <- read_delim(file2,delim=",",skip=1, show_col_types = FALSE)

  d1 <- ud %>% filter(`Wavelength nm.` %in% c(750,663,645,630))
  d2 <- cd %>% filter(`Wavelength nm.` %in% c(750,665))

  Abs750 <- ifelse(is_empty(d1$Abs.[d1$`Wavelength nm.` == 750]), 0, d1$Abs.[d1$`Wavelength nm.` == 750])
  Abs663 <- d1$Abs.[d1$`Wavelength nm.` == 663] - Abs750
  Abs645 <- d1$Abs.[d1$`Wavelength nm.` == 645] - Abs750
  Abs630 <- d1$Abs.[d1$`Wavelength nm.` == 630] - Abs750

  Abs750_a <- ifelse(is_empty(d2$Abs.[d2$`Wavelength nm.` == 750]), 0, d2$Abs.[d2$`Wavelength nm.` == 750])
  Abs665_a <- d2$Abs.[d2$`Wavelength nm.` == 665] - Abs750_a

  (26.73*((1.7*Abs665_a) - Abs663)*(va*df))/(vw*pl)
}
