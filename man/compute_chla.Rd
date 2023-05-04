\name{compute_chla}
\alias{compute_chla}
\title{
Compute corrected chlorophyll a concentration
}
\description{
Compute corrected chlorophyll a concentration
}
\usage{
compute_chla(file1, file2, va, vw, df, pl)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{file1}{
  path of the .txt file containing the uncorrected chlorophyll a concentration dataset
}
  \item{file2}{
  path of the .txt file containing the corrected chlorophyll a concentration dataset
}
  \item{va}{
  volume of acetone (mL)
}
  \item{vw}{
  volume of filtered water (L)
}
  \item{df}{
  dilution factor
}
  \item{pl}{
  the cell path length (cm)
}

  \references{
ESS Method 150.1: Chlorophyll - Spectrophotometric. http://polk.wateratlas.usf.edu/upload/documents/methd150.pdf
}


