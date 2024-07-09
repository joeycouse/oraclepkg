#' Set pretty defaults for ggplot2 objects
#'
#' @param base_size base font size
#' @param strip_text_size strip text size
#' @param strip_text_margin bottom margin for strip title
#' @param subtitle_size subtitle size
#' @param subtitle_margin bottom margin for subtitle
#' @param plot_title_size plot title size
#' @param plot_title_margin bottom margin for plot title
#' @param plot_caption_size font size of plot caption
#' @param axis_x_margin top margin for x axis titl
#' @param axis_text_size font size of axis text labels
#' @param axis_y_margin right margin for y axis title
#' @param legend_title_size font size of the legend title
#' @param legend_text_size font of the legend text
#' @param fill default fill color for geom_bar, geom_rect, and geom_col
#' @param ... other args to \code{theme_minimal}
#'
#'
#' @return A ggplot2 theme
#' @export
#'
#' @examples
#'
#' \dontrun{
#'
#' library(tidyverse)
#' library(cousepkg)
#'
#' theme_set(theme_couse())
#' }
#'
#'
theme_couse <- function(base_size = 12,
                        strip_text_size = 12,
                        strip_text_margin = 5,
                        subtitle_size = 13,
                        subtitle_margin = 11,
                        plot_title_size = 18,
                        plot_title_margin = 10,
                        plot_caption_size = 10,
                        axis_x_margin = 10,
                        axis_y_margin = 10,
                        axis_text_size = 12,
                        legend_title_size = 14,
                        legend_text_size = 11,
                        fill = "#E69F00",
                        ...) {
  ret <- ggplot2::theme_minimal(base_family = "IBM Plex Sans",
                                base_size = base_size,
                                ...)

  ret$plot.title <- ggtext::element_markdown(
    hjust = 0,
    size = plot_title_size,
    margin = ggplot2::margin(b = plot_title_margin, l = plot_title_margin, t = plot_title_margin-2),
    family = "IBM Plex",
    face = "bold"
  )

  ret$plot.subtitle <-
    ggtext::element_markdown(
      hjust = 0,
      size = subtitle_size,
      margin = ggplot2::margin(b = subtitle_margin, l = subtitle_margin),
      family = "IBM Plex Sans",
      lineheight = 1.2
    )

  ret$plot.caption <-
    ggtext::element_markdown(
      margin = ggplot2::margin(t = 17, b = 5),
      hjust = 1,
      family = "IBM Plex Sans",
      size = plot_caption_size,
      lineheight = 1.5
    )

  ret$axis.text.x <-
    ggtext::element_markdown(family = "IBM Plex Sans", size = axis_text_size)

  ret$axis.text.y <-
    ggtext::element_markdown(family = "IBM Plex Sans", size = axis_text_size)

  ret$axis.title.x <-
    ggtext::element_markdown(margin = ggplot2::margin(t = axis_x_margin),
                             family = "IBM Plex",
                             face = "bold")

  ret$axis.title.y <-
    ggtext::element_markdown(margin = ggplot2::margin(r = axis_y_margin),
                             angle = 0,
                             family = "IBM Plex",
                             face = "bold")

  ret$strip.text <-
    ggtext::element_textbox_simple(
      family = "IBM Plex Sans",
      size = strip_text_size,
      halign = 0.5,
      margin = ggplot2::margin(b = strip_text_margin, t = strip_text_margin),
      padding = ggplot2::margin(5, 0, 5, 0),
      color = "black",
      fill = "grey88",
      box.colour = "grey88",
      linetype = 1,
      r = ggplot2::unit(6, "pt")
    )

  ret$plot.caption.position = "plot"

  ret$panel.spacing = ggplot2::unit(2, "lines")

  ret$plot.title.position = "plot"

  ret$legend.title = ggtext::element_markdown(family = "IBM Plex Sans", size = legend_title_size)

  ret$legend.text = ggplot2::element_text(family = "IBM Plex Sans", size = legend_text_size)

  ggplot2::update_geom_defaults('label',
                                list(family = "IBM Plex Sans"))

  ggplot2::update_geom_defaults('text',
                                list(family = "IBM Plex Sans"))

  ggplot2::update_geom_defaults('col', list(fill = fill, alpha = 0.8))

  ggplot2::update_geom_defaults('bar', list(fill = fill, alpha = 0.8))


  options(
    ggplot2.discrete.fill = list(thematic::okabe_ito()),
    ggplot2.discrete.colour = list(thematic::okabe_ito()),
    ggplot2.continuous.colour = "viridis",
    ggplot2.continuous.fill = "viridis",
    ggplot2.binned.colour = "viridis",
    ggplo2.binned.fill = "viridis"
  )

  ret

}
