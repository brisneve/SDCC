\name{compute_pheo}
\alias{compute_pheo}
\title{
Compute pheophytin concentration
}
\description{
Compute pheophytin concentration
}
\usage{
compute_pheo(file1, file2, va, vw, df, pl)
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


