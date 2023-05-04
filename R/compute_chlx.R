# Compute uncorrected chlorophyll a concentration

compute_chlx <- function(file, va, vw, df, pl){
  require(tidyverse)
  d <- read_delim(file,delim=",",skip=1, show_col_types = FALSE)
  d1 <- d %>% filter(`Wavelength nm.` %in% c(750,663,645,630))
  Abs750 <- ifelse(is_empty(d1$Abs.[d1$`Wavelength nm.` == 750]), 0, d1$Abs.[d1$`Wavelength nm.` == 750])
  Abs663 <- d1$Abs.[d1$`Wavelength nm.` == 663] - Abs750
  Abs645 <- d1$Abs.[d1$`Wavelength nm.` == 645] - Abs750
  Abs630 <- d1$Abs.[d1$`Wavelength nm.` == 630] - Abs750
  (((11.64*Abs663) - (2.16*Abs645) + (0.10*Abs630))*(va*df))/(vw*pl)
}
