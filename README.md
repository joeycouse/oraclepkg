
<!-- README.md is generated from README.Rmd. Please edit that file -->

# cousepkg

<!-- badges: start -->
<!-- badges: end -->

The goal of cousepkg is to make plots pretty using a custom theme and
`ggtext::element_markdown()` objects and provide my own RMarkdown
template.

## Installation

`cousepkg` requires the install of the [IBM Plex
Sans](https://github.com/IBM/plex/). If you are having problems
installing the fonts see a solution
[here](https://github.com/wch/extrafont/issues/32#issuecomment-907556721).

Run code below to install system fonts

``` r
install.packages(extrafont)
library(extrafont)

extrafont::font_import()
```

install development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("joeycouse/cousepkg")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(tidyverse)
#> -- Attaching packages --------------------------------------- tidyverse 1.3.1 --
#> v ggplot2 3.3.5     v purrr   0.3.4
#> v tibble  3.1.6     v dplyr   1.0.7
#> v tidyr   1.1.4     v stringr 1.4.0
#> v readr   2.1.1     v forcats 0.5.1
#> -- Conflicts ------------------------------------------ tidyverse_conflicts() --
#> x dplyr::filter() masks stats::filter()
#> x dplyr::lag()    masks stats::lag()
library(cousepkg)
theme_set(theme_couse())

mtcars %>%
  ggplot(aes(x = cyl))+
  geom_bar()+
  labs(x = 'Cylinders',
       y = 'Count',
       title = 'Total Cars by Cylinders',
       subtitle = '*Eight cylinder vehicles are most common*',
       caption = '**There are many cars!**')
#> Warning in grid.Call(C_stringMetric, as.graphicsAnnot(x$label)): font family not
#> found in Windows font database
#> Warning in grid.Call(C_textBounds, as.graphicsAnnot(x$label), x$x, x$y, : font
#> family not found in Windows font database

#> Warning in grid.Call(C_textBounds, as.graphicsAnnot(x$label), x$x, x$y, : font
#> family not found in Windows font database

#> Warning in grid.Call(C_textBounds, as.graphicsAnnot(x$label), x$x, x$y, : font
#> family not found in Windows font database

#> Warning in grid.Call(C_textBounds, as.graphicsAnnot(x$label), x$x, x$y, : font
#> family not found in Windows font database

#> Warning in grid.Call(C_textBounds, as.graphicsAnnot(x$label), x$x, x$y, : font
#> family not found in Windows font database

#> Warning in grid.Call(C_textBounds, as.graphicsAnnot(x$label), x$x, x$y, : font
#> family not found in Windows font database

#> Warning in grid.Call(C_textBounds, as.graphicsAnnot(x$label), x$x, x$y, : font
#> family not found in Windows font database
#> Warning in grid.Call.graphics(C_text, as.graphicsAnnot(x$label), x$x, x$y, :
#> font family not found in Windows font database

#> Warning in grid.Call.graphics(C_text, as.graphicsAnnot(x$label), x$x, x$y, :
#> font family not found in Windows font database

#> Warning in grid.Call.graphics(C_text, as.graphicsAnnot(x$label), x$x, x$y, :
#> font family not found in Windows font database

#> Warning in grid.Call.graphics(C_text, as.graphicsAnnot(x$label), x$x, x$y, :
#> font family not found in Windows font database

#> Warning in grid.Call.graphics(C_text, as.graphicsAnnot(x$label), x$x, x$y, :
#> font family not found in Windows font database
```

<img src="man/figures/README-example-1.png" width="100%" />

## Source

Package largely inspired by data visualizations from
\[@juliasilge\](<https://github.com/juliasilge>) and her personal R
Package [silgelib](https://github.com/juliasilge/silgelib)
