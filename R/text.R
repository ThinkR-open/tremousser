#' Text component
#' @family text
#' @param ... Additional arguments to be passed to the component.
#' @references
#' [Text documentation](https://storybook.tremor.so/?path=/docs/ui-text-text--docs)
#' @export
trem_text <- component("Text")

#' Title component
#' @family text
#' @param ... Additional arguments to be passed to the component.
#' @references
#' [Title documentation](https://storybook.tremor.so/?path=/docs/ui-text-title--docs)
#' @export
trem_title <- component("Title")

#' Subtitle component
#' @family text
#' @param ... Additional arguments to be passed to the component.
#' @references
#' [Subtitle documentation](https://storybook.tremor.so/?path=/docs/ui-text-subtitle--docs)
#' @export
trem_subtitle <- component("Subtitle")

#' Metric component
#' @family text
#' @param ... Additional arguments to be passed to the component.
#' @references
#' [Metric documentation](https://storybook.tremor.so/?path=/docs/ui-text-metric--docs)
#' @export
trem_metric <- component("Metric")

#' Legend component
#' @family text
#' @param ... Additional arguments to be passed to the component.
#' @references
#' [Legend documentation](https://storybook.tremor.so/?path=/docs/ui-text-legend--docs)
#' @export
trem_legend <- component("Legend")

#' @noRd
trem_callout_ <- component("Callout")

#' Callout component
#' @param title Title of the callout
#' @param ... Additional arguments to be passed to the component.
#' @references
#' [Callout documentation](https://storybook.tremor.so/?path=/docs/ui-text-callout--docs)
#' @family text
#' @export
trem_callout <- function(title, ...) {
  trem_callout_(
    title = title,
    ...
  )
}
