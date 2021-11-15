
<!-- README.md is generated from README.Rmd. Please edit that file -->

# cousepkg

<!-- badges: start -->
<!-- badges: end -->

The goal of cousepkg is to make plots pretty using a custom theme and
`ggtext::element_markdown()` objects

## Installation

install development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("joeycouse/cousepkg")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(cousepkg)
library(extrafont)
#> Registering fonts with R
library(tidyverse)
#> -- Attaching packages --------------------------------------- tidyverse 1.3.1 --
#> v ggplot2 3.3.5     v purrr   0.3.4
#> v tibble  3.1.5     v dplyr   1.0.7
#> v tidyr   1.1.4     v stringr 1.4.0
#> v readr   2.0.2     v forcats 0.5.1
#> -- Conflicts ------------------------------------------ tidyverse_conflicts() --
#> x dplyr::filter() masks stats::filter()
#> x dplyr::lag()    masks stats::lag()
theme_set(theme_couse())

mtcars %>%
  ggplot(aes(x = cyl))+
  geom_bar()
```

<img src="man/figures/README-example-1.png" width="100%" />
