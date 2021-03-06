% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/node_info.R
\name{node_info}
\alias{node_info}
\title{Get detailed information on nodes}
\usage{
node_info(graph)
}
\arguments{
\item{graph}{a graph object of class
\code{dgr_graph}.}
}
\value{
a data frame containing information specific
to each node within the graph.
}
\description{
Obtain a data frame with detailed
information on nodes and their interrelationships
within a graph.
}
\examples{
# Set a seed
set.seed(23)

# Create a node data frame (ndf)
ndf <-
  create_node_df(
    n = 26,
    label = TRUE,
    type = c(rep("a", 7),
             rep("b", 9),
             rep("c", 8),
             rep("d", 2)))

# Create an edge data frame (edf)
edf <-
  create_edge_df(
    from = sample(1:26, replace = TRUE),
    to = sample(1:26, replace = TRUE),
    rel = c(rep("rel_a", 7),
            rep("rel_b", 9),
            rep("rel_c", 8),
            rep("rel_d", 2)))

# Create a graph using the ndf and edf
graph <-
  create_graph(
    nodes_df = ndf,
    edges_df = edf)

# Get information on the graph's nodes
node_info(graph)
#>    id type label deg indeg outdeg loops
#> 1   1    a     1   0     0      0     0
#> 2   2    a     2   0     0      0     0
#> 3   3    a     3   2     2      0     0
#> 4   4    a     4   3     1      2     0
#> 5   5    a     5   1     1      0     0
#> 6   6    a     6   1     0      1     0
#>.. ...  ...   ... ...   ...    ...   ...
}
