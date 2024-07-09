.onAttach <- function(libname, pkgname) {

  if("Oracle Sans" %in% systemfonts::system_fonts()$family == FALSE){
    stop("You need to install the Oracle Sans Font")
  }

  # systemfonts::register_variant(name = "Oracle Sans Light",
  #                               family = "Oracle Sans",
  #                               weight = "light",
  #                               width = "normal")
  #
  # systemfonts::register_variant(name = "Oracle Sans Medium",
  #                               family = "Oracle Sans",
  #                               weight = "normal",
  #                               width = "normal")
  #
  # systemfonts::register_variant(name = "Oracle Sans",
  #                               family = "Oracle Sans",
  #                               weight = c("normal", "semibold"),
  #                               width = "normal")

packageStartupMessage("The default ggplot2 theme has been set to theme_oracle()")
ggplot2::theme_set(oraclepkg::theme_oracle())

}
