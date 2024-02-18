
[![R-CMD-check](https://github.com/Leonnorblad/SeqAlignR/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/Leonnorblad/SeqAlignR/actions/workflows/R-CMD-check.yaml)
[![](https://cranlogs.r-pkg.org/badges/grand-total/SeqAlignR?color=brightgreen)](https://cran.r-project.org/package=SeqAlignR)


# SeqAlignR - Sequence Alignment and Visualization Tool
Sequence alignment and visualization tool designed to enhance understanding of sequence alignment algorithms, such as the Needleman-Wunsch algorithm. Through detailed matrix plot visualizations with arrows illustrating the path of different alignments, users can gain insights into how these algorithms score and identify optimal alignments between two sequences.

## Installation
To use the `SeqAlignR` package, simply run:
```R
install.packages("SeqAlignR")
library(SeqAlignR)
```

## Examples
Define the two sequences to align.
```R
seq1 <- "GCATGCG"
seq2 <- "GATTACA"
```

Then run the alignment algorithm. Here we also specify `d` (gap penalty), `mismatch`, and `match`, see the Needleman-Wunsch [Wikipedia article](https://en.wikipedia.org/wiki/Needleman%E2%80%93Wunsch_algorithm) for details on the algorithm.
```R
# Run the Needleman-Wunsch algorithm
alignment1 <- align_sequences(seq1, seq2, d = -1, mismatch = -1, match = 1, method="needleman")
```

A plot displaying the alignment matrix of `seq1` and `seq2` can then be generated.
```R
# Plot the matrix
plot(alignment1)
```

![png](/demo/alignment_demo.png)

The first sequence `seq1` is represented by the columns and the second sequence `seq2` is represented by the rows. The first column and first row are left bank, meaning a gap. Each cell in the matrix displays the score. The subtitle states the `match`, `mismatch`, and gap penalty `d` used in the algorithm. A mismatch is shown by the red arrows, a match by the blue arrows, and a gap by the green arrows. The alignment(s) with the highest score are highlighted with thick gray borders.

The alignments can also be printed.
```R
# Print alignment
print(alignment1)
```

```markdown
Alignments with a max score of 0
GCA-TGCG 
| | | |  
G-ATTACA

GCAT-GCG 
| ||  |  
G-ATTACA

GCATG-CG 
| ||  |  
G-ATTACA
```


