#' Sequence Alignment Tool
#'
#' Sequence alignment and visualization tool designed to enhance understanding
#' of sequence alignment algorithms, such as the Needleman-Wunsch algorithm. Through detailed matrix plot
#' visualizations with arrows illustrating the path of different alignments, users can gain insights into how
#' these algorithms score and identify optimal alignments between two sequences.
#'
#' @examples
#' seq1 <- "GCATGCG"
#' seq2 <- "GATTACA"
#' # Run the Needleman-Wunsch algorithm
#' alignment1 <- align_sequences(seq1, seq2, d = -1, mismatch = -1, match = 1, method="needleman")
#' # Print the alignments
#' print(alignment1)
#' # Plot the matrix
#' plot(alignment1)
#'
#' @section Getting started:
#'
#' \enumerate{
#'   \item Install the SeqAlignR package from CRAN using:
#'   \preformatted{install.packages("SeqAlignR")}
#'
#'   \item Load the SeqAlignR package into your R session:
#'   \preformatted{library(SeqAlignR)}
#'
#'   \item Explore the documentation for \code{\link{align_sequences}} or see the example below:
#'   \preformatted{?align_sequences}
#' }
#'
#'
#' @references
#' The graphics in the package were inspired by \href{https://gist.github.com/slowkow/508393}{this code} by Kamil Slowikowski (\href{https://orcid.org/0000-0002-2843-6370}{ORCID}).
#'
#' @author Leonard Persson Norblad \email{leonard.norblad@gmail.com} (\href{https://orcid.org/0009-0004-8562-4118}{ORCID})
#'
#' @name SeqAlignR
NULL
