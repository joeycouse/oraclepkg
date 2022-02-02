.onAttach <- function(libname, pkgname) {


  systemfonts::register_variant(name = "IBM Plex Sans SemiBold",
                                family = "IBM Plex Sans",
                                weight = "semibold",
                                width = "normal")

  systemfonts::register_variant(name = "IBM Plex Sans Light",
                                family = "IBM Plex Sans",
                                weight = "light",
                                width = "normal")

  systemfonts::register_variant(name = "IBM Plex Sans Medium",
                                family = "IBM Plex Sans",
                                weight = "medium",
                                width = "normal")


}
