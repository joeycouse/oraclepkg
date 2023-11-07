
<!-- README.md is generated from README.Rmd. Please edit that file -->

# cousepkg

<!-- badges: start -->
<!-- badges: end -->

Cousepkg is a custom ggplot2 theme and ultilizes
`ggtext::element_markdown()`.

## Installation

`cousepkg` requires the install of the [IBM Plex
Sans](https://github.com/IBM/plex/). The package relies on
[systemfonts](https://systemfonts.r-lib.org/) for access to system
fonts.

install development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("joeycouse/cousepkg")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(tidyverse)
#> ── Attaching core tidyverse packages ──────────────────────── tidyverse 2.0.0 ──
#> ✔ dplyr     1.1.3     ✔ readr     2.1.4
#> ✔ forcats   1.0.0     ✔ stringr   1.5.0
#> ✔ ggplot2   3.4.4     ✔ tibble    3.2.1
#> ✔ lubridate 1.9.3     ✔ tidyr     1.3.0
#> ✔ purrr     1.0.2     
#> ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
#> ✖ dplyr::filter() masks stats::filter()
#> ✖ dplyr::lag()    masks stats::lag()
#> ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors
library(cousepkg)
#> The default ggplot2 theme has been set to theme_couse()
#> 
#> Attaching package: 'cousepkg'
#> 
#> The following object is masked from 'package:base':
#> 
#>     mode
theme_set(theme_couse())

mtcars %>%
  ggplot(aes(x = as.factor(cyl)))+
  geom_bar(aes(fill = as.factor(cyl)))+
  labs(x = 'Cylinders',
       y = '**Count**',
       title = 'Total Cars by Cylinders',
       subtitle = '*Eight cylinder vehicles are most common*',
       caption = 'There are many cars!',
       fill = "*Cylinders*") +
  theme(legend.position = c(0.15, 0.95),
        panel.grid.minor.x = element_blank(),
        panel.grid.major.x = element_blank(),
        legend.direction = "horizontal")
```

<img src="man/figures/README-example-1.png" width="100%" />

## Source

cousepkg is largely inspired by data visualizations from
[juliasilge](https://github.com/juliasilge) and her personal R Package
[silgelib](https://github.com/juliasilge/silgelib)
