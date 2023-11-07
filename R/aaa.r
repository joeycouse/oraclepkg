.onAttach <- function(libname, pkgname) {

  if("IBM Plex Sans" %in% systemfonts::system_fonts()$family == FALSE){
    stop("You need to install the IBM Plex Sans font: https://github.com/IBM/plex/")
  }

  systemfonts::register_variant(name = "IBM Plex Light",
                                family = "IBM Plex Sans",
                                weight = "light",
                                width = "normal")

  systemfonts::register_variant(name = "IBM Plex Medium",
                                family = "IBM Plex Sans",
                                weight = "medium",
                                width = "normal")

  systemfonts::register_variant(name = "IBM Plex",
                                family = "IBM Plex Sans",
                                weight = c("normal", "semibold"),
                                width = "normal")

ggplot2::theme_set(cousepkg::theme_couse())

}
